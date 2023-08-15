using System.IO;
using ExileCore.Shared.Interfaces;
using ExileCore.Shared.Nodes;
using ImGuiNET;
using Newtonsoft.Json;

namespace PobCheck;

public class PobCheckSettings : ISettings
{
    public PobCheckSettings()
    {
        IsRunningStatus = new CustomNode
        {
            DrawDelegate = () =>
            {
                if (IsRunning)
                {
                    var value = true;
                    ImGui.Checkbox("Pob process is running", ref value);
                }
                else
                {
                    var value = false;
                    ImGui.Checkbox("Pob process is not running", ref value);
                }
            }
        };
        PobPathCheck = new CustomNode
        {
            DrawDelegate = () =>
            {
                if (IsValidPobPath)
                {
                    var value = true;
                    ImGui.Checkbox("Path is ok", ref value);
                }
                else
                {
                    var value = false;
                    ImGui.Checkbox("Path is invalid", ref value);
                }
            }
        };
        BuildPathCheck = new CustomNode
        {
            DrawDelegate = () =>
            {
                if (IsValidBuildPath)
                {
                    var value = true;
                    ImGui.Checkbox("Path is ok", ref value);
                }
                else
                {
                    var value = false;
                    ImGui.Checkbox("Path is invalid", ref value);
                }
            }
        };
    }


    internal bool IsValidPobPath => PobInstallPath.Value is { Length: > 0 } && File.Exists(Path.Join(PobInstallPath, "Path of Building.exe"));
    internal bool IsValidBuildPath => IsValidPobPath && BuildPath.Value is { Length: > 0 } && File.Exists(FullBuildPath);

    internal string FullBuildPath => Path.Combine(PobInstallPath, BuildPath);

    internal bool IsRunning { get; set; }

    public ToggleNode Enable { get; set; } = new(false);

    [JsonIgnore]
    public CustomNode IsRunningStatus { get; set; }

    public TextNode PobInstallPath { get; set; } = new("");

    [JsonIgnore]
    public CustomNode PobPathCheck { get; set; }

    public TextNode BuildPath { get; set; } = new("");

    [JsonIgnore]
    public CustomNode BuildPathCheck { get; set; }

    public ButtonNode Stop { get; set; } = new();
    public ToggleNode LogPobOutput { get; set; } = new(false);
    public ToggleNode WatchBuildFileChanges { get; set; } = new(true);
}