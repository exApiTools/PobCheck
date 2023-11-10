using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace PobCheck;

public class PobProcess
{
    private readonly string _luaJitPath;
    private readonly string _scriptPath;
    private readonly string _pobInstallPath;
    private Process _process;
    private Task _exitTask;
    private int _requestId;
    private readonly SemaphoreSlim _semaphore = new SemaphoreSlim(1, 1);
    private bool _started;
    private readonly ConcurrentQueue<string> _output = new ConcurrentQueue<string>();
    private Task<string> _stdErrTask;

    public PobProcess(string luaJitPath, string scriptPath, string pobInstallPath)
    {
        _luaJitPath = luaJitPath;
        _scriptPath = scriptPath;
        _pobInstallPath = pobInstallPath;
    }

    public void Start()
    {
        if (_started)
        {
            return;
        }

        var psi = new ProcessStartInfo(_luaJitPath)
        {
            ArgumentList = { _scriptPath },
            WorkingDirectory = _pobInstallPath,
            RedirectStandardOutput = true,
            RedirectStandardInput = true,
            RedirectStandardError = true,
            CreateNoWindow = true,
        };
        var process = Process.Start(psi) ?? throw new Exception("Process.Start returned null");
        _process = process;
        _exitTask = process.WaitForExitAsync();
        _started = true;
        Task.Run(RunReadLoop);
        _stdErrTask = Task.Run(_process.StandardError.ReadToEndAsync);
    }

    public async ValueTask DisposeAsync()
    {
        _process?.Kill();
        GC.SuppressFinalize(this);
        if (_exitTask is { } task)
        {
            await task;
        }
    }

    ~PobProcess()
    {
        _process?.Kill();
    }

    public bool IsRunning => _process?.HasExited == false;

    public event EventHandler<string> Lines;

    private async Task RunReadLoop()
    {
        while (!_exitTask.IsCompleted)
        {
            var lineTask = _process.StandardOutput.ReadLineAsync();
            var t = await Task.WhenAny(_exitTask, lineTask);
            if (t == _exitTask)
            {
                return;
            }

            var line = await lineTask;

            try
            {
                Lines?.Invoke(this, line);
            }
            catch
            {
                //eh
            }

            _output.Enqueue(line);
        }
    }

    private async Task<PobProcessResponse> RunCommandUnsafe(string command, Dictionary<string, object> args, CancellationToken cancellationToken)
    {
        await _semaphore.WaitAsync(cancellationToken);
        try
        {
            var requestId = _requestId++;
            cancellationToken.ThrowIfCancellationRequested();
            var input = JsonConvert.SerializeObject(new
            {
                code = command,
                id = requestId,
                args = args
            }).ReplaceLineEndings(string.Empty);
            await _process.StandardInput.WriteLineAsync(input);
            bool readyForResponse = false;
            while (true)
            {
                cancellationToken.ThrowIfCancellationRequested();
                string line;
                while (!_output.TryDequeue(out line))
                {
                    await Task.Delay(100, cancellationToken);
                }

                if (line == null)
                {
                    return new PobProcessResponse { Error = $"Process output ended, stderr: {await _stdErrTask}", Status = "error" };
                }

                if (!readyForResponse)
                {
                    if (line == "---BEGIN RESPONSE---")
                    {
                        readyForResponse = true;
                    }
                }
                else
                {
                    try
                    {
                        var json = JsonConvert.DeserializeObject<PobProcessResponse>(line);
                        return json ?? throw new Exception("Json is null");
                    }
                    catch (Exception ex)
                    {
                        return new PobProcessResponse { Error = $"Unable to parse process output: {ex}", Status = "error" };
                    }
                }
            }
        }
        finally
        {
            _semaphore.Release();
        }
    }

    public async Task<PobProcessResponse> RunCommand(string command, Dictionary<string, object> args, CancellationToken cancellationToken)
    {
        var result = await RunCommandUnsafe(command, args, cancellationToken);
        if (result.Status != "ok" || result.Error != null)
        {
            throw new Exception($"Result status: {result.Status}, error: {result.Error}");
        }

        return result;
    }

    public async Task<T> RunCommand<T>(string command, Dictionary<string, object> args, CancellationToken cancellationToken)
    {
        var result = await RunCommand(command, args, cancellationToken);
        return default(T) != null || result.Result != null
            ? result.Result.ToObject<T>()
            : default;
    }
}

public class PobProcessResponse
{
    public string Status { get; set; }
    public JToken Result { get; set; }
    public string Error { get; set; }
}