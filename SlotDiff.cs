using System.Collections.Generic;

namespace PobCheck;

public record SlotDiff(List<SlotDiffPart> PlayerEffect, List<SlotDiffPart> MinionEffect);