local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
if C.unitframes.enable ~= true then return end

local font1 = C.media.pixelfont
local self = _G["TukuiFocus"]

self.shadow:Kill()
self:Size(165, 15)
self:ClearAllPoints()
self:Point("CENTER",UIParent, "CENTER",-300,-300)
self:Tag(self.Name, "[Tukui:getnamecolor][Tukui:nameshort]")

self.Health:Height(11)
self.Power:Height(3)

self.Health.value = T.SetFontString(self.Health, font1, 12, "MONOCHROMEOUTLINE")
self.Health.value:Point("LEFT", 5, 2)
self.Health.value:SetShadowOffset(0, 0)

self.Name:SetFont(font1, 12, "MONOCHROMEOUTLINE")
self.Name:SetParent(self.Health)
self.Name:ClearAllPoints()
self.Name:SetPoint("CENTER", 0, 2)
self.Name:SetShadowOffset( 0, 0)

self.Power.value = T.SetFontString(self.Health, font1, 12, "MONOCHROMEOUTLINE")
self.Power.value:Point("RIGHT", -5, 2)
self.Power.value:SetShadowOffset(0, 0)

self.Castbar:Kill()

self.Debuffs:Kill()