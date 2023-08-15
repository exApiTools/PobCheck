using System;
using System.Collections.Generic;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

namespace PobCheck;

public class PobProcessRunner
{
    private readonly string _luaJitPath;
    private readonly string _scriptPath;
    private readonly string _pobInstallPath;
    private PobProcess _pobProcess;

    public PobProcessRunner(string luaJitPath, string scriptPath, string pobInstallPath)
    {
        _luaJitPath = luaJitPath;
        _scriptPath = scriptPath;
        _pobInstallPath = pobInstallPath;
    }

    public event EventHandler<string> Lines;
    public Func<Task> OnStart;

    private async Task EnsureRunning()
    {
        if (!IsRunning)
        {
            await Stop();
            _pobProcess = new PobProcess(_luaJitPath, _scriptPath, _pobInstallPath);
            _pobProcess.Lines += (x, y) => Lines?.Invoke(this, y);
            _pobProcess.Start();
            if (OnStart is { } onStart)
            {
                await onStart();
            }
        }
    }

    public bool IsRunning => _pobProcess is { IsRunning: true };

    public async Task Restart()
    {
        await Stop();
        await EnsureRunning();
    }

    public async Task Stop()
    {
        if (Interlocked.Exchange(ref _pobProcess, null) is { } process)
        {
            await process.DisposeAsync();
        }
    }

    public async Task LoadBuildFromFile(string buildPath, CancellationToken cancellationToken)
    {
        await EnsureRunning();
        var buildXml = await File.ReadAllTextAsync(buildPath, cancellationToken);
        await _pobProcess.RunCommand("loadBuildFromXML(extArgs.build)", new Dictionary<string, object> { ["build"] = buildXml }, cancellationToken);
    }

    public async Task LoadBuildFromCode(string buildCode, CancellationToken cancellationToken)
    {
        await EnsureRunning();
        var buildXml = PobCodeHelper.CodeToXml(buildCode);
        await _pobProcess.RunCommand("loadBuildFromXML(extArgs.build)", new Dictionary<string, object> { ["build"] = buildXml }, cancellationToken);
    }

    public async Task<List<SlotResult>> GetItemComparison(string itemDescription, CancellationToken cancellationToken)
    {
        await EnsureRunning();
        return await _pobProcess.RunCommand<List<SlotResult>>("testItemForDisplayNew(extArgs.itemText)",
            new Dictionary<string, object> { ["itemText"] = itemDescription },
            cancellationToken);
    }
}