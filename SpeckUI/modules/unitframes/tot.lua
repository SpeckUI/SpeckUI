local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
if C.unitframes.enable ~= true then return end

local font1 = C.media.pixelfont
local health = TukuiTargetTarget.Health
local tot = TukuiTargetTarget
local name = TukuiTargetTarget.Name


	if not T.lowversion then
	tot.panel:Kill()
	end
	tot.shadow:Kill()
	tot:Height(9)
	tot:Width(60)
	health:Height(9)
	tot:ClearAllPoints()
	tot:SetPoint("BOTTOMLEFT", TukuiTarget, "BOTTOMRIGHT", -60, -12)
	name:SetFont(font1, 12, "MONOCHROMEOUTLINE")
	name:SetParent(health)
	name:ClearAllPoints()
	name:SetPoint("CENTER", 0, 1)
	tot:Tag(tot.Name, "[Tukui:getnamecolor][Tukui:nameshort]")