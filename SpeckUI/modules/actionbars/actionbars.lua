local T, C, L = unpack(Tukui)

--------------------------
-- ACTION BAR POSITIONS --
--------------------------
-- BottomBar
TukuiBar1:ClearAllPoints()
TukuiBar1:SetPoint("BOTTOM", 0,0)

-- TopBar
TukuiBar4:ClearAllPoints()
TukuiBar4:SetPoint("BOTTOM", TukuiBar1, 0, 0)

-- VerticalBar
for i= 1, 12 do
	local b = _G["MultiBarRightButton"..i]
	local b2 = _G["MultiBarRightButton"..i-1]
	b:ClearAllPoints()
	if i == 1 then
		b:SetPoint("RIGHT", UIParent, "RIGHT", -1, 138)
	else
		b:SetPoint("TOP", b2, "BOTTOM", 0, -T.buttonspacing)
	end
end

--------------------------
---- PET BAR POSITION ----
--------------------------

for i = 1, 10 do
		local b9 = _G["PetActionButton"..i]
		local b10 = _G["PetActionButton"..i-1]
		b9:SetSize(20, 20)
		b9:ClearAllPoints()
		b9.ClearAllPoints = T.dummy
		if i == 1 then
			b9:SetPoint("RIGHT", _G["MultiBarRightButton2"], "LEFT", -1,-0)
			b9.SetPoint = T.dummy
		else
			b10:SetPoint("TOP", b9, "BOTTOM", 0, -T.buttonspacing)
		end
	end
	
-- Shift Bar
TukuiStance:ClearAllPoints()
TukuiStance:SetPoint("TOPLEFT", TukuiMinimap, "BOTTOMLEFT", 142, 97)
TukuiStance:SetFrameStrata("BACKGROUND")
TukuiStance:SetBackdrop(nil)

if T.myclass == "SHAMAN" then
	if MultiCastActionBarFrame then
        TukuiStance:ClearAllPoints()
		TukuiStance:SetPoint("BOTTOMLEFT", 2,145 )
		TukuiStance:Hide()
		
local totem = TukuiStance
SLASH_TOTEM1 = "/totem"
SlashCmdList["TOTEM"] = function()
	if InCombatLockdown() then
		print(ERR_NOT_IN_COMBAT)
	else
		if totem:IsShown() then
			totem:Hide()
		else
			totem:Show()
		end
	end
end
		
	end
end

