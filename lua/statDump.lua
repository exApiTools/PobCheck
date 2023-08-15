local dkjson = require "dkjson"

local pairs = pairs
local ipairs = ipairs
local next = next
local t_insert = table.insert
local t_remove = table.remove
local s_format = string.format
local m_max = math.max
local m_min = math.min
local m_ceil = math.ceil
local m_floor = math.floor
local m_modf = math.modf


function getStatChange(item, slot, dbMode)
    local calcFunc, calcBase = build.itemsTab.build.calcsTab:GetMiscCalculator()
    build.itemsTab:UpdateSockets()
    -- Build sorted list of slots to compare with
    local compareSlots = { }
    for slotName, slot in pairs(build.itemsTab.slots) do
        if build.itemsTab:IsItemValidForSlot(item, slotName) and not slot.inactive and (not slot.weaponSet or slot.weaponSet == (build.itemsTab.activeItemSet.useSecondWeaponSet and 2 or 1)) then
            t_insert(compareSlots, slot)
        end
    end
    table.sort(compareSlots, function(a, b)
        if a ~= b then
            if slot == a then
                return true
            end
            if slot == b then
                return false
            end
        end
        if a.selItemId ~= b.selItemId then
            if item == build.itemsTab.items[a.selItemId] then
                return true
            end
            if item == build.itemsTab.items[b.selItemId] then
                return false
            end
        end
        local aNum = tonumber(a.slotName:match("%d+"))
        local bNum = tonumber(b.slotName:match("%d+"))
        if aNum and bNum then
            return aNum < bNum
        else
            return a.slotName < b.slotName
        end
    end)

    local allSlotResults = {}
    -- Add comparisons for each slot
    for _, compareSlot in pairs(compareSlots) do
        if not main.slotOnlyTooltips or (slot and (slot.nodeId == compareSlot.nodeId or slot.slotName == compareSlot.slotName)) or not slot or slot == compareSlot then
            local selItem = build.itemsTab.items[compareSlot.selItemId]
            local storedGlobalCacheDPSView = GlobalCache.useFullDPS
            GlobalCache.useFullDPS = GlobalCache.numActiveSkillInFullDPS > 0
            local output = calcFunc({ repSlotName = compareSlot.slotName, repItem = item ~= selItem and item }, {})
            GlobalCache.useFullDPS = storedGlobalCacheDPSView
            local slotResult = AddStatComparesToTooltipNew(calcBase, output, build.itemsTab.build)
            t_insert(allSlotResults, {slotName = compareSlot.label, itemInSlotName = selItem and selItem.name, diff = slotResult})
        end
    end
    return allSlotResults
end

function AddStatComparesToTooltipNew(baseOutput, compareOutput, b)
    local result = {}
	if b.calcsTab.mainEnv.player.mainSkill.minion and baseOutput.Minion and compareOutput.Minion then
		result.minionEffect = CompareStatListNew(b.minionDisplayStats, b.calcsTab.mainEnv.minion, baseOutput.Minion, compareOutput.Minion, b)
	end
	result.playerEffect = CompareStatListNew(b.displayStats, b.calcsTab.mainEnv.player, baseOutput, compareOutput, b)
	return result
end


function CompareStatListNew(statList, actor, baseOutput, compareOutput, b)
    local finalLine = {}
	for _, statData in ipairs(statList) do
		if statData.stat and (not statData.flag or actor.mainSkill.skillFlags[statData.flag]) and statData.stat ~= "SkillDPS" then
			local statVal1 = compareOutput[statData.stat] or 0
			local statVal2 = baseOutput[statData.stat] or 0
			local diff = statVal1 - statVal2
			if statData.stat == "FullDPS" and not GlobalCache.useFullDPS and not b.viewMode == "TREE" then
				diff = 0
			end
			if (diff > 0.001 or diff < -0.001) and (not statData.condFunc or statData.condFunc(statVal1,compareOutput) or statData.condFunc(statVal2,baseOutput)) then
				local val = diff * ((statData.pc or statData.mod) and 100 or 1)
				local valStr = s_format("%+"..statData.fmt, val) -- Can't use self:FormatStat, because it doesn't have %+. Adding that would have complicated a simple function

				valStr = formatNumSep(valStr)

				local line = s_format("%s %s", valStr, statData.label)
                local pc = nil
				if statData.compPercent and statVal1 ~= 0 and statVal2 ~= 0 then
					pc = statVal1 / statVal2 * 100 - 100
					line = line .. s_format(" (%+.1f%%)", pc)
				end
                local obj = {name = statData.label, diff = val, percentDiff = pc, fmt = statData.fmt }
                line = line .. dkjson.encode(obj)
                t_insert(finalLine, obj)
			end
		end
	end
	return finalLine
end