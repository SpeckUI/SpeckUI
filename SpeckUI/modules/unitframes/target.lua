local T, C, L = unpack(Tukui)
if not C.unitframes.enable then return end

local font1 = C.media.pixelfont
local health = TukuiTarget.Health
local power = TukuiTarget.Power
local castbar = TukuiTarget.Castbar
local target = TukuiTarget
local debuffs = TukuiTarget.Debuffs
local buffs = TukuiTarget.Buffs
local name = TukuiTarget.Name

hooksecurefunc(T, "PostCreateAura", function(element, button)
button.Glow:Kill()
end)

target.shadow:Kill()
target.panel:Kill()
target:Height(15)
target:Width(165)
health:Height(11)
power:Height(3)

power.value = T.SetFontString( health, font1, 12, "MONOCHROMEOUTLINE" )
power.value:Point("RIGHT", -5, 1)
power.value:SetShadowOffset( 0, 0 )

name:SetFont(C.media.pixelfont, 12, "MONOCHROMEOUTLINE")
name:SetShadowOffset(0,0)
name:SetParent(health)
name:ClearAllPoints()
name:SetPoint("LEFT", 5, 1)
name.ClearAllPoints = T.dummy
name.SetPoint = T.dummy
target:Tag(target.Name, "[Tukui:getnamecolor][Tukui:nameshort]")

health.value = T.SetFontString( health, font1, 12, "MONOCHROMEOUTLINE" )
health.value:Point("LEFT", 5, -14)
health.value:SetShadowOffset( 0, 0 )

target:ClearAllPoints()
if C.actionbar.bigab == true then
	target:SetPoint("TOP", UIParent, "BOTTOM", 240, 151)
else
	target:SetPoint("TOP", UIParent, "BOTTOM", 240, 151)
end

buffs:ClearAllPoints()
buffs:SetPoint("BOTTOMRIGHT", TukuiTarget , "TOPRIGHT", -1, 9)
buffs:SetWidth(165)
buffs.size = 20
buffs.num = 8
buffs.spacing = 1
buffs.initialAnchor = 'TOPLEFT'
buffs.ClearAllPoints = T.dummy
buffs.SetPoint = T.dummy
buffs.PostCreateIcon = T.PostCreateAura
buffs.PostUpdateIcon = T.PostUpdateAura

castbar:ClearAllPoints()
castbar:SetPoint("BOTTOM", target, "TOP", 0, 3)
castbar:Height(10)
castbar:Width(165)
castbar.button:Kill()
castbar.icon:Kill()
castbar.Text:Point("LEFT", castbar, "LEFT", 3, 0)
castbar.Text:SetFont(font1, 12, "MONOCHROMEOUTLINE")
castbar.Text:SetShadowOffset(0, 0)
castbar.Time:Point("RIGHT", castbar, "RIGHT", -3, 1)
castbar.Time:SetFont(font1, 12, "MONOCHROMEOUTLINE")
castbar.Time:SetShadowOffset(0, 0)
castbar:CreateBorder(false, true)

debuffs:ClearAllPoints()
debuffs:SetPoint("CENTER", power, "CENTER", 1, 53)
debuffs:Width(165)
debuffs.size = 20
debuffs.num = 16
debuffs.spacing = 1
debuffs["growth-y"] = "UP"
debuffs["growth-x"] = "LEFT"
debuffs.ClearAllPoints = T.dummy
debuffs.SetPoint = T.dummy
debuffs.PostCreateIcon = T.PostCreateAura
debuffs.PostUpdateIcon = T.PostUpdateAura


