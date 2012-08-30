local T, C, L = unpack(Tukui)
if not C.unitframes.enable then return end

local font1 = C.media.pixelfont
local health = TukuiPlayer.Health
local power = TukuiPlayer.Power
local castbar = TukuiPlayer.Castbar
local player = TukuiPlayer

-- Frame Config Here
player.shadow:Kill()
player.panel:Kill()
player:Height(15)
player:Width(165)
health:Height(11)
power:Height(3)

power.value = T.SetFontString( health, font1, 12, "MONOCHROMEOUTLINE" )
power.value:Point("RIGHT", -5, 1)
power.value:SetShadowOffset( 0, 0 )

health.value = T.SetFontString( health, font1, 12, "MONOCHROMEOUTLINE" )
health.value:Point("LEFT", 5, 1)
health.value:SetShadowOffset( 0, 0 )

-- Move Player Frame
player:ClearAllPoints()		
if C.actionbar.bigab == true then
	player:SetPoint("TOP", UIParent, "BOTTOM", -240, 151)
else
	player:SetPoint("TOP", UIParent, "BOTTOM", -240, 151)
end

-- Cast Bar
castbar:Size(309,11)
castbar:CreateBorder(false, true)
castbar.button:Kill()
castbar.icon:Kill()
	
castbar:ClearAllPoints()	
if C.actionbar.bigab == false then
	castbar:Point("BOTTOM", UIParent, "BOTTOM", 0, 62)
else
	castbar:Point("BOTTOM", UIParent, "BOTTOM", 0, 62)
end

castbar.Text:Point("LEFT", castbar, "LEFT", 3, 1)
castbar.Text:SetShadowOffset(0, 0)
castbar.Text:SetFont(font1, 12, "MONOCHROMEOUTLINE")
castbar.Time:Point("RIGHT", castbar, "RIGHT", -3, 1)
castbar.Time:SetShadowOffset(0, 0)
castbar.Time:SetFont(font1, 12, "MONOCHROMEOUTLINE")


-- Exp/Rep Bar
local reputation = TukuiPlayer_Reputation
local experience = TukuiPlayer_Experience
	
if( T.level ~= MAX_PLAYER_LEVEL ) then
	experience:Width( 5 )
	experience:Height(136)
	experience:ClearAllPoints()
	experience:Point( "RIGHT", TukuiMinimap, "RIGHT", -2, 0 )
	experience:SetOrientation( "Vertical" )
	experience.Rested:SetOrientation( "Vertical" )
	experience:SetFrameLevel( 12 )
	experience:SetAlpha(0)
	experience:CreateBorder(false, true)
	experience:HookScript( "OnEnter", function( self ) self:SetAlpha( 1 ) end )
	experience:HookScript( "OnLeave", function( self ) self:SetAlpha( 0 ) end )
	player.Resting:SetTexture( nil )
end
									 
if( T.level == MAX_PLAYER_LEVEL ) then
	reputation:Width( 5 )
	reputation:Height(136)
	reputation:ClearAllPoints()
	reputation:Point( "RIGHT", TukuiMinimap, "RIGHT", -2, 0)
	reputation:SetOrientation( "Vertical" )
	reputation:SetFrameLevel( 10 )
	reputation:SetAlpha(0)
	reputation:CreateBorder(false, true)
	reputation:HookScript( "OnEnter", function( self ) self:SetAlpha( 1 ) end )
	reputation:HookScript( "OnLeave", function( self ) self:SetAlpha( 0 ) end )
end