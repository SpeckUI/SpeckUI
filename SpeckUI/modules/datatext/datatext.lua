local T, C, L = unpack(Tukui)

local datatext = {
	"Guild",
	"Friends",
	"Gold",
	"FPS",
	"System",
	"Bags",
	"Gold",
	"Time",
	"Durability",
	"Heal",
	"Damage",
	"Power",
	"Haste",
	"Crit",
	"Avoidance",
	"Armor",
	"Currency",
	"Hit",
	"Mastery",
	"MicroMenu",
	"Regen",
	"Talent",
	"CallToArms",
}
-- our own datatext position function because we made our custom panel
local DataTextPosition = function(f, t, o)
	local info = MyEditstatInfo
	local timep = TimePanel
	
	if o >= 1 and o <= 6 then
		-- 1 to 3 use a default tukui panel, no need to update
		-- just update 4 to 6
		if o == 4 then
			t:ClearAllPoints()
			t:SetParent(info)
			t:SetHeight(info:GetHeight())
			t:SetPoint("LEFT", 2,1)		
			t:SetFont(C.media.pixelfont, 12, "MONOCHROMEOUTLINE")
		elseif o == 5 then
			t:ClearAllPoints()
			t:SetParent(info)
			t:SetHeight(info:GetHeight())
			t:SetPoint("RIGHT", -2,1)		
			t:SetFont(C.media.pixelfont, 12, "MONOCHROMEOUTLINE")
		elseif o == 6 then
			t:ClearAllPoints()	
			t:SetParent(timep)
			t:SetHeight(timep:GetHeight())
			t:SetPoint("CENTER",0,1)
			t:SetFont(C.media.pixelfont, 12, "MONOCHROMEOUTLINE")
		end
	else
		-- hide everything that we don't use and enabled by default on tukui
		f:Hide()
		t:Hide()
	end
end

--Overwrite & Update Show/Hide/Position of all Datatext
for _, data in pairs(datatext) do
	local t = "TukuiStat"
	local frame = _G[t..data]
	local text = _G[t..data.."Text"]

	if frame and frame.Option then
		DataTextPosition(frame, text, frame.Option)
	end
end