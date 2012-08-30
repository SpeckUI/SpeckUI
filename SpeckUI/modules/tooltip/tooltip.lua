local T, C, L = unpack(Tukui)
if not C["tooltip"].enable then return end
--------------------------------------------------------
-- Tooltip
--------------------------------------------------------
TukuiTooltipAnchor:ClearAllPoints()
TukuiTooltipAnchor:Point("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -1, 124)

--------------------------------------------------------
-- Hyperlink (mouseover tooltip in chat
--------------------------------------------------------
local function hookItem(tip)
	tip:HookScript("OnTooltipSetItem", function(self, ...)
		local name, link = self:GetItem()
		local icon = link and GetItemIcon(link)
	end)
end
hookItem(_G["GameTooltip"])
hookItem(_G["ItemRefTooltip"])

local function hookSpell(tip)
	tip:HookScript("OnTooltipSetSpell", function(self, ...)
		if self:GetSpell() then
			local name, rank, icon = GetSpellInfo(self:GetSpell())
		end
	end)
end
hookSpell(_G["GameTooltip"])
hookSpell(_G["ItemRefTooltip"])

-----------------------------------------------------------
-- ilvl in tooltip
-----------------------------------------------------------
--[[
	thx to Gsuz for the script
]]--

local SlotName = {
        "Head","Neck","Shoulder","Back","Chest","Wrist",
        "Hands","Waist","Legs","Feet","Finger0","Finger1",
        "Trinket0","Trinket1","MainHand","SecondaryHand","Ranged"
    }
local function GetItemLVL(unit)
local total, item = 0, 0;
    for _,v in pairs(SlotName) do
        local slot = GetInventoryItemLink(unit, GetInventorySlotInfo(v .. "Slot"));
        if (slot ~= nil) then
            item = item + 1;
            total = total + select(4, GetItemInfo(slot))
        end
    end
    if (item > 0) then
        return floor(total * 10 / item)/10;
    end
    return 0;
end
GameTooltip:HookScript("OnTooltipSetUnit", function(self, ...)
    if C["tooltip"].ilvl == true then
		local _, unit = GameTooltip:GetUnit();
		if (unit and CanInspect(unit)) then
			if (not ((InspectFrame and InspectFrame:IsShown()) or (Examiner and Examiner:IsShown()))) then
				NotifyInspect(unit);
				GameTooltip:AddLine("Item Level: " .. GetItemLVL(unit));
				ClearInspectPlayer(unit);
				GameTooltip:Show();
			end
		end
	end
end)