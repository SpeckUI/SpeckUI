local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
if C.classbar.holyPower[1] ~= true or T.myclass ~= "PALADIN" then return end

local tbWidth, tbHeight = C.classbar.holyPower[2], C.classbar.holyPower[3]

local hPower = CreateFrame("Frame", "TukuiHolyPower", UIParent)
hPower:Width(101)
hPower:Height(5)
hPower:Point("TOPLEFT", TukuiBar4, "TOPLEFT", 2, 6)
hPower:SetFrameLevel(10)
hPower:SetAlpha(0)

local charges = {}

for i=1,3 do
charges[i] = CreateFrame("Frame", "TukuiHolyPower_Charge"..i, hPower)
charges[i]:SetWidth(101)
charges[i]:SetHeight(5)
charges[i]:CreateBorder(false, true)
charges[i].tex = charges[i]:CreateTexture(nil, "OVERLAY")
charges[i].tex:SetTexture(C.media.normTex)
charges[i].tex:SetVertexColor(225/255,225/255,15/255)
charges[i].tex:AllPoints(charges[i])
charges[i].BG = charges[i]:CreateTexture(nil, 'BORDER')
charges[i].BG:SetAllPoints()
charges[i].BG:SetTexture(0,0,0,.5)
if i==1 then
charges[i]:SetPoint("LEFT", hPower, "LEFT", 0, 0)
else
charges[i]:SetPoint("LEFT", charges[i-1], "RIGHT", 3, 0)
end
end

local function UpdateCharges()
local numCharges = UnitPower("player", SPELL_POWER_HOLY_POWER)
for i = 1, 3 do
if (i <= numCharges) then
charges[i].tex:Show()
else
charges[i].tex:Hide()
end
end
end

hPower:RegisterEvent("UNIT_POWER")
hPower:RegisterEvent("PLAYER_ENTERING_WORLD")
hPower:SetScript("OnEvent", UpdateCharges)

local f = CreateFrame("Frame", "AutoHideChat")
local addon = {}
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:SetScript("OnEvent", function(_, event) addon[event]() end)

function addon:PLAYER_REGEN_ENABLED()
    hPower:SetAlpha(0)
end

function addon:PLAYER_REGEN_DISABLED()
    hPower:SetAlpha(1)

end