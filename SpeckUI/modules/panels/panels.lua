local T, C, L = unpack(Tukui)

-- Left Chat Background
local p1 = CreateFrame("Frame", "ChatBackgroundLeft", UIParent)
p1:SetWidth(368)
p1:SetHeight(148)
p1:SetFrameLevel(0)
p1:SetFrameStrata("BACKGROUND")
p1:SetTemplate("Default")
p1:SetBackdropColor(0,0,0,0.5)
p1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 2, 2)
p1:SetBackdropBorderColor(0,0,0,0)
p1:CreateBorder(false, true)

-- Right Chat Background
local p2 = CreateFrame("Frame", "ChatBackgroundRight", UIParent)
p2:SetWidth(368)
p2:SetHeight(148)
p2:SetFrameLevel(0)
p2:SetFrameStrata("BACKGROUND")
p2:SetTemplate("Default")
p2:SetBackdropColor(0,0,0,0.5)
p2:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -2, 2)
p2:SetBackdropBorderColor(0,0,0,0)
p2:CreateBorder(false, true)

-- Minimap Time Panel
local p3 = CreateFrame("Frame", "TimePanel", UIParent)
p3:SetWidth(50)
p3:SetHeight(11)
p3:SetTemplate("Default")
p3:SetBackdropColor(0,0,0,0.5)
p3:SetFrameLevel(2)
p3:SetFrameStrata("BACKGROUND")
p3:SetPoint("BOTTOM", TukuiMinimap, "BOTTOM", 0, -11)

-- Datatext Panel
local p4 = CreateFrame("Frame", "MyEditstatInfo", UIParent)
p4:SetWidth(155)
p4:SetHeight(11)
p4:SetTemplate("Default")
p4:SetBackdropColor(0,0,0,0.5)
p4:SetFrameLevel(2)
p4:SetFrameStrata("BACKGROUND")
p4:SetPoint("TOPLEFT", TukuiMinimap, "TOPRIGHT", 2, 1)

-- Move Battle Net Frame
BNToastFrame:HookScript("OnShow", function(self)
    self:ClearAllPoints()
    self:SetPoint("BOTTOMLEFT", ChatBackgroundLeft, "TOPLEFT", -1, 2)
    self:SetTemplate("Default")
    self:SetBackdropColor(0,0,0,0.5)
    self:SetFrameLevel(2)
    self:SetFrameStrata("BACKGROUND")
    self.shadow:Kill()
end)


