local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
if C.unitframes.enable ~= true then return end

local font = C.media.pixelfont
local normTex = C.media.normTex
local glowTex = C.media.normTex
local bubbleTex = C.media.normTex
local pwidth = 200
local nameoffset = 4

for i=1, MAX_BOSS_FRAMES do
local self = _G["TukuiBoss"..i]
self.shadow:Kill()
self.Power.value:Kill()
self:SetSize(204, 21)
self.Health:Height(17)
self.Power:Height(3)

self.Health.value = T.SetFontString(self.Health, font, 12, "MONOCHROMEOUTLINE")
self.Health.value:Point("RIGHT", self.Health, "RIGHT", -4, -1)
self.Health.value:SetShadowOffset(0,0)

self.Name:SetFont(font, 12, "MONOCHROMEOUTLINE")
self.Name:SetParent(self.Health)
self.Name:ClearAllPoints()
self.Name:SetPoint("LEFT", self.Health, "LEFT", 5, -1)
self.Name:SetShadowOffset(0, 0)
self.Name.ClearAllPoints = T.dummy
self.Name.SetPoint = T.dummy

self:Tag(self.Name, "[Tukui:getnamecolor][Tukui:namelong]")

self.Debuffs.size = 23
self.Debuffs.PostCreateIcon = T.PostCreateAura
self.Debuffs.PostUpdateIcon = T.PostUpdateAura
self.Debuffs.spacing = 1
self.Buffs.size = 23
self.Buffs.PostCreateIcon = T.PostCreateAura
self.Buffs.PostUpdateIcon = T.PostUpdateAura
self.Buffs.spacing = 1

self.Castbar:ClearAllPoints()
self.Castbar:SetPoint("TOP", self.Power, "BOTTOM", 0, -3)
self.Castbar:Size(204,9)
self.Castbar.bg:SetBackdropColor(0,0,0,.5)
self.Castbar.bg:Point("TOPLEFT", -1, 1)
self.Castbar.bg:Point("BOTTOMRIGHT", 1, -1)
self.Castbar.button:Kill()

self.Castbar.Text:SetFont(font, 12, "MONOCHROMEOUTLINE")
self.Castbar.Text:SetShadowOffset(0,0)
self.Castbar.Text:SetParent(self.Castbar)
self.Castbar.Text:ClearAllPoints()
self.Castbar.Text:SetPoint("LEFT", self.Castbar, "LEFT", 5, 1)
self.Castbar.Text.ClearAllPoints = T.dummy
self.Castbar.Text.SetPoint = T.dummy

self.Castbar.time:SetFont(font, 12, "MONOCHROMEOUTLINE")
self.Castbar.time:SetShadowOffset(0,0)
self.Castbar.time:SetParent(self.Castbar)
self.Castbar.time:ClearAllPoints()
self.Castbar.time:SetPoint("RIGHT", self.Castbar, "RIGHT", -5, 1)
self.Castbar.time.ClearAllPoints = T.dummy
self.Castbar.time.SetPoint = T.dummy

self.AltPowerBar:SetBackdropColor(0, 0, 0,0.5)
self.AltPowerBar:CreateBorder(false, true)
self.AltPowerBar:SetBackdropBorderColor(0, 0, 0,0.0)
							   
self:ClearAllPoints()
if i == 1 then
self:SetPoint("RIGHT", UIParent, "RIGHT", -300, -100)
else
self:SetPoint("BOTTOM", _G["TukuiBoss"..i - 1] , "TOP", 0, 15)
end
end