local T, C, L = unpack(Tukui)

-- Player Buffs Reskin
local hooks = {
    TukuiAurasPlayerBuffs,
    TukuiAurasPlayerDebuffs,
    TukuiAurasPlayerConsolidate,
}

local OnAttributeChanged = function(self)
    for i = 1, self:GetNumChildren() do
        local child = select(i, self:GetChildren())
		local Duration = child.Duration
		local Count = child.Count
		local Icon = child.Icon
        if Duration then
            child.Duration:SetFont(C["media"].pixelfont, 12, "MONOCHROMEOUTLINE")
            child.Duration:SetPoint("BOTTOM", 0,1)
        end
        if Count then
            child.Count:SetFont(C["media"].pixelfont, 12, "MONOCHROMEOUTLINE")
            child.Count:SetPoint("BOTTOMRIGHT", -1, 1)
        end
        if Icon then
			Icon:ClearAllPoints()
			Icon:Point("TOPLEFT", child, 1, -1)
			Icon:Point("BOTTOMRIGHT", child, -1, 1)
        end
    end
end

for _, frame in pairs(hooks) do
    frame:RegisterEvent("PLAYER_ENTERING_WORLD")
    frame:HookScript("OnAttributeChanged", OnAttributeChanged)
    frame:HookScript("OnEvent", OnAttributeChanged)
end

TukuiAurasPlayerBuffs:ClearAllPoints()
TukuiAurasPlayerBuffs:Point("TOPRIGHT", UIParent, "TOPRIGHT", -1, -1)
TukuiAurasPlayerBuffs:SetAttribute("xOffset", -31)
TukuiAurasPlayerBuffs:SetAttribute("wrapYOffset", -31)
TukuiAurasPlayerBuffs:SetAttribute("wrapAfter", 10)

TukuiAurasPlayerDebuffs:ClearAllPoints()
TukuiAurasPlayerDebuffs:Point("CENTER", UIParent, "CENTER", 20,0)
TukuiAurasPlayerDebuffs:SetAttribute("xOffset", -31)
TukuiAurasPlayerDebuffs:SetAttribute("wrapYOffset", -31)
TukuiAurasPlayerDebuffs:SetAttribute("wrapAfter", 5)


-- Target Buffs Reskin
local player = TukuiPlayer
local target = TukuiTarget
local targettarget = TukuiTargetTarget 

local function PostCreateAura(self, button)
	button.Glow:Kill()
	button.icon:Point("TOPLEFT", 1, -1)
	button.icon:Point("BOTTOMRIGHT", -1, 1)
	button.cd:Point("TOPLEFT", button, "TOPLEFT", 0, 0)
	button.cd:Point("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0)
	button.remaining:SetFont(C["media"].pixelfont, 12, "MONOCHROMEOUTLINE")
	button.remaining:SetShadowOffset( 0, 0 )
end
hooksecurefunc(T, "PostCreateAura", PostCreateAura)

if target then
	local buffs = target.Buffs
	local debuffs = target.Debuffs   
	buffs.PostCreateIcon = T.PostCreateAura
	buffs.PostUpdateIcon = T.PostUpdateAura
	buffs.ClearAllPoints = T.dummy
	buffs.SetPoint = T.dummy
    debuffs.PostCreateIcon = T.PostCreateAura
	debuffs.PostUpdateIcon = T.PostUpdateAura
	debuffs.ClearAllPoints = T.dummy
	debuffs.SetPoint = T.dummy
	TukuiBoss1.Buffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss1.Buffs.PostUpdateIcon = T.PostUpdateAura
	TukuiBoss2.Buffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss2.Buffs.PostUpdateIcon = T.PostUpdateAura
	TukuiBoss3.Buffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss3.Buffs.PostUpdateIcon = T.PostUpdateAura
	TukuiBoss4.Buffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss4.Buffs.PostUpdateIcon = T.PostUpdateAura
	TukuiBoss1.Debuffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss1.Debuffs.PostUpdateIcon = T.PostUpdateAura
	TukuiBoss2.Debuffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss2.Debuffs.PostUpdateIcon = T.PostUpdateAura
	TukuiBoss3.Debuffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss3.Debuffs.PostUpdateIcon = T.PostUpdateAura
	TukuiBoss4.Debuffs.PostCreateIcon = T.PostCreateAura
	TukuiBoss4.Debuffs.PostUpdateIcon = T.PostUpdateAura
end 

local function PostCreateAura(self, button)
	-- kill the glow
	button.Glow:Kill()

	-- move icon just 1px inside the black inset (it hide 1px borders)
	button.icon:Point("TOPLEFT", 1, -1)
	button.icon:Point("BOTTOMRIGHT", -1, 1)

	end
	hooksecurefunc(T, "PostCreateAura", PostCreateAura)
       