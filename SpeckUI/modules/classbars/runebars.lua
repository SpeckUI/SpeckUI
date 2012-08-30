local T, C, L = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
if C.classbar.runeBars[1] ~= true or T.myclass ~= "DEATHKNIGHT" then return end

RuneFrame:Kill()

local tbWidth, tbHeight = C.classbar.runeBars[2], C.classbar.runeBars[3]
local total = 1
local delay = 0.03
local GetRuneType, GetRuneCooldown, SetValue, GetTime = GetRuneType, GetRuneCooldown, SetValue, GetTime

local colors = {
{1, 0, 0};
{0, .5, 0};
{0, 1, 1};
{.9, .1, 1};
}

local runebars = CreateFrame("Frame", "TukuiRuneBars", UIParent)
runebars:Width(50)
runebars:Height(5)
runebars:Point("BOTTOMLEFT", TukuiPlayer, "TOPLEFT", 0, 3)
runebars:CreateBorder(false, true)
runebars:SetFrameLevel(10)
runebars:SetAlpha(0)

local runes = {}

for i=1,6 do
runes[i] = CreateFrame("StatusBar", "TukuiRuneBars_Rune"..i, runebars)
runes[i]:SetWidth(25)
runes[i]:SetHeight(5)
if runes[i]:GetHeight() > runes[i]:GetWidth() then
runes[i]:SetOrientation("VERTICAL")
else
runes[i]:SetOrientation("HORIZONTAL")
end
if i==1 then
runes[i]:SetPoint("LEFT", runebars, 0, 0)
else
runes[i]:SetPoint("LEFT", runes[i-1], "RIGHT", 3, 0)
end
runes[i]:SetStatusBarTexture(C.media.normTex)
runes[i]:CreateBorder(false, true)
runes[i].BG = runes[i]:CreateTexture(nil, 'BORDER')
runes[i].BG:SetAllPoints()
runes[i].BG:SetTexture(.1, .1, .1)

runes[i]:FontString("timer", C.media.pixelfont, 12, "MONOCHROMEOUTLINE")
runes[i].timer:SetPoint("CENTER", 0, 1)
runes[i].timer:SetShadowOffset(0,0)
end

local function UpdateRune(i)
local start, duration, finished = GetRuneCooldown(i)
local runetype = GetRuneType(i)

runes[i]:SetStatusBarColor(unpack(colors[runetype]))
runes[i]:SetMinMaxValues(0, duration)
if finished then
runes[i]:SetValue(duration)
runes[i].timer:SetText("")
else
runes[i]:SetValue(GetTime() - start)
runes[i].timer:SetFormattedText("%01d", duration - (GetTime() - start))
end
end

runebars:SetScript("OnUpdate", function(self, elapsed)
total = total + elapsed
if (total > .01) then
for i=1, 6 do
UpdateRune(i)
end
end
total = 0
end)

-- TO HIDE RUNEBAR OUT OF COMBAT
local r = CreateFrame("Frame")
local addon = {}
r:RegisterEvent("PLAYER_REGEN_ENABLED")
r:RegisterEvent("PLAYER_REGEN_DISABLED")
r:SetScript("OnEvent", function(_, event) addon[event]() end)

function addon:PLAYER_REGEN_ENABLED()
    runebars:SetAlpha(0)
end

function addon:PLAYER_REGEN_DISABLED()
    runebars:SetAlpha(1)

end