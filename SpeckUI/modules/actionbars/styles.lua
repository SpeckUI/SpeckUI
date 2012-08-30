local T, C, L = unpack(Tukui)

-- Remove Action Bar Backdrops
TukuiBar1:SetBackdrop(nil)
TukuiBar4:SetBackdrop(nil)
TukuiBar5:SetBackdrop(nil)
TukuiPetBar:SetBackdrop(nil)

------------------------------
local function style(self)
	local name = self:GetName()

	--> fixing a taint issue while changing totem flyout button in combat.
	if name:match("MultiCast") then return end

	--> don't skin the boss encounter extra button to match texture (4.3 patch)
	--> http://www.tukui.org/storage/viewer.php?id=913811extrabar.jpg
	if name:match("ExtraActionButton") then return end

	local Count = _G[name.."Count"]
	local HotKey = _G[name.."HotKey"]
    local Icon = _G[name.."Icon"]
    local Border = _G[name.."Panel"]
	Count:SetFont(C["media"].pixelfont, 12, "MONOCHROMEOUTLINE")
	HotKey:SetFont(C["media"].pixelfont, 12, "MONOCHROMEOUTLINE")
    Icon:Point("TOPLEFT", 1, -1)
	Icon:Point("BOTTOMRIGHT", -1, 1)
	Border:SetBackdropColor(0,0,0,0.5)
end
hooksecurefunc("ActionButton_Update", style)


--Skin Pet/StanceBar
local function StyleActionBarPetAndShiftButton(normal, button, icon, name, pet)
	local Border = _G[name.."Panel"]
	local Icon = _G[name.."Icon"]
    Icon:Point("TOPLEFT", 1, -1)
	Icon:Point("BOTTOMRIGHT", -1, 1)
	Border:SetBackdropColor(0,0,0,0.5)
end
hooksecurefunc(T, "StyleActionBarPetAndShiftButton", StyleActionBarPetAndShiftButton)




