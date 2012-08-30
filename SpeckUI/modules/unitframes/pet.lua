local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
if C.unitframes.enable ~= true then return end

local font1 = C.media.pixelfont
local health = TukuiPet.Health
local power = TukuiPet.Power
local castbar = TukuiPet.Castbar
local pet = TukuiPet
local name = TukuiPet.Name

	if not T.lowversion then
		pet.panel:Kill()
	end
	
	pet.shadow:Kill()
	pet:Height(9)
	pet:Width(60)
	power:Height(0)
	health:Height(9)
	pet:ClearAllPoints()
	pet:SetPoint("TOPLEFT", TukuiPlayer, "BOTTOMLEFT", 0 ,-3)
	name:SetFont(font1, 12, "MONOCHROMEOUTLINE")
	name:SetParent(health)
	name:ClearAllPoints()
	--name:Kill()
	name:Size(50, 11)
	name:SetPoint("CENTER", pet, "CENTER", 0,1)
	pet:Tag(pet.Name, "[Tukui:getnamecolor][Tukui:nameshort]")
	castbar:Kill()
