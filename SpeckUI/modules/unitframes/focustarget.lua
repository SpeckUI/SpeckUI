local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
if C.unitframes.enable ~= true then return end

local font1 = C.media.pixelfont
local self = _G["TukuiFocusTarget"]

self.shadow:Kill()
self:Height(9)
self:Width(60)
self.Health:Height(9)

self.Power:Kill()
self.Power.value:Kill()
self.Health.value:Kill()
self.Debuffs:Kill()

self:ClearAllPoints()
self:SetPoint("BOTTOMRIGHT", TukuiFocus, "TOPRIGHT", 0, 3)

self.Name:SetFont(font1, 12, "MONOCHROMEOUTLINE")
self.Name:SetShadowOffset( 0, 0 )
self.Name:ClearAllPoints()
self.Name:SetPoint("CENTER", self, "CENTER", 0, 2)

self.Castbar:Kill()

self:Tag(self.Name, "[Tukui:getnamecolor][Tukui:nameshort]")