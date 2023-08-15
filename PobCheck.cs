using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using ExileCore;
using ExileCore.PoEMemory.Elements;
using ExileCore.Shared;
using ExileCore.Shared.Helpers;
using ImGuiNET;
using Microsoft.Extensions.Caching.Memory;
using SharpDX;

namespace PobCheck;

public class PobCheck : BaseSettingsPlugin<PobCheckSettings>
{
    private MemoryCache _cache = CreateCache();

    private static MemoryCache CreateCache()
    {
        return new MemoryCache(new MemoryCacheOptions { SizeLimit = 100 });
    }

    private readonly ConcurrentDictionary<string, SyncTask<bool>> _activePobTasks = new ConcurrentDictionary<string, SyncTask<bool>>();
    private FileSystemWatcher _buildFileWatcher;
    private bool _buildFileChanged = false;
    private PobProcessRunner Runner { get; set; }


    public override bool Initialise()
    {
        Settings.Stop.OnPressed = Stop;
        Settings.BuildPath.OnValueChanged = () =>
        {
            if (Settings.IsValidBuildPath && Runner != null)
            {
                Stop();
                SetupBuildFileWatcher();
            }
        };
        SetupBuildFileWatcher();
        return true;
    }

    private void SetupBuildFileWatcher()
    {
        _buildFileWatcher?.Dispose();
        _buildFileWatcher = null;
        if (Settings.WatchBuildFileChanges && Settings.IsValidBuildPath)
        {
            var fullBuildPath = Settings.FullBuildPath;
            _buildFileWatcher = new FileSystemWatcher
            {
                NotifyFilter = NotifyFilters.LastWrite,
                Path = Path.GetDirectoryName(fullBuildPath),
                Filter = Path.GetFileName(fullBuildPath),
                EnableRaisingEvents = true,
            };
            _buildFileWatcher.Changed += (sender, args) =>
            {
                LogMessage("Build file changed");
                _buildFileChanged = true;
            };
        }
    }

    private void Stop()
    {
        Runner?.Stop().GetAwaiter().GetResult();
        _cache = CreateCache();
    }

    private PobProcessRunner CreateRunner()
    {
        var pobProcessRunner = new PobProcessRunner(
            Path.Join(DirectoryFullName, "lua", "luajit.exe"),
            Path.Join(DirectoryFullName, "lua", "cli.lua"),
            Settings.PobInstallPath
        )
        {
            OnStart = async () =>
            {
                _cache = CreateCache();
                await Runner.LoadBuildFromFile(Settings.FullBuildPath, CancellationToken.None);
            },
        };
        pobProcessRunner.Lines += (_, s) =>
        {
            if (Settings.LogPobOutput)
            {
                DebugWindow.LogMsg(s);
            }
        };
        return pobProcessRunner;
    }

    private bool InitializeRunner()
    {
        if (Runner == null)
        {
            if (!Settings.IsValidPobPath || !Settings.IsValidBuildPath)
            {
                return false;
            }

            Runner = CreateRunner();
        }

        return true;
    }

    public override void OnUnload()
    {
        _buildFileWatcher?.Dispose();
        _buildFileWatcher = null;
        Runner?.Stop().GetAwaiter().GetResult();
    }

    private async SyncTask<bool> GetItemStatDiff(string text)
    {
        try
        {
            if (!InitializeRunner())
            {
                return true;
            }

            var result = await Task.Run(() => Runner.GetItemComparison(text, CancellationToken.None));
            _cache.Set(text, result, new MemoryCacheEntryOptions().SetSize(1));
        }
        finally
        {
            _activePobTasks.TryRemove(text, out _);
        }

        return true;
    }

    public override Job Tick()
    {
        Settings.IsRunning = Runner?.IsRunning == true;
        if (_buildFileChanged)
        {
            _buildFileChanged = false;
            Stop();
        }

        var exceptions = new List<Exception>();
        foreach (var (key, syncTask) in _activePobTasks)
        {
            var taskCopy = syncTask;
            try
            {
                TaskUtils.RunOrRestart(ref taskCopy, () => null);
            }
            catch (Exception ex)
            {
                exceptions.Add(ex);
            }

            if (taskCopy == null)
            {
                _activePobTasks.TryRemove(key, out _);
            }
        }

        if (exceptions.Any())
        {
            throw new AggregateException(exceptions);
        }

        return null;
    }

    public override void Render()
    {
        var item = GameController.IngameState.UIHover?.AsObject<HoverItemIcon>();
        if (item == null || item.Address == 0)
        {
            return;
        }

        var frame = item.ItemFrame;
        if (frame == null || frame.Address == 0)
        {
            return;
        }

        if (frame.IsAdvancedTooltipText)
        {
            return;
        }

        var text = frame.CopyText;
        if (string.IsNullOrEmpty(text))
        {
            return;
        }

        if (_cache.TryGetValue(text, out List<SlotResult> slotResults))
        {
            ImGui.BeginTooltip();
            foreach (var slotResult in slotResults)
            {
                ImGui.Text($"Slot: {slotResult.SlotName}");
                foreach (var slotDiffPart in slotResult.Diff.PlayerEffect)
                {
                    var statLine = $"{slotDiffPart.Name}: {slotDiffPart.Diff:+0.##;-0.##}";
                    if (slotDiffPart.PercentDiff != null)
                    {
                        statLine += $" ({slotDiffPart.PercentDiff:+0.#\\%;-0.#\\%})";
                    }

                    ImGui.PushStyleColor(ImGuiCol.Text, slotDiffPart.Diff > 0 ? Color.Green.ToImguiVec4() : Color.Red.ToImguiVec4());
                    ImGui.TextUnformatted(statLine);
                    ImGui.PopStyleColor();
                }
            }

            ImGui.EndTooltip();
        }
        else if (!_activePobTasks.ContainsKey(text))
        {
            _activePobTasks.TryAdd(text, GetItemStatDiff(text));
        }
        else if (Runner != null)
        {
            ImGui.BeginTooltip();
            ImGui.Text("Loading the PoB...");
            ImGui.EndTooltip();
        }
    }
}