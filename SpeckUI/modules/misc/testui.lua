local S, C, L = unpack( Tukui )

if( C["sinaris"].testui ~= true ) then return end

local testui = TestUI or function() end
TestUI = function( msg )
if( msg == "uf" or msg == "unitframes" ) then
TukuiTarget:Show(); TukuiTarget.Hide = function() end; TukuiTarget.unit = "player"
TukuiTargetTarget:Show(); TukuiTargetTarget.Hide = function() end; TukuiTargetTarget.unit = "player"
TukuiFocus:Show(); TukuiFocus.Hide = function() end; TukuiFocus.unit = "player"
TukuiFocusTarget:Show(); TukuiFocusTarget.Hide = function() end; TukuiFocusTarget.unit = "player"
TukuiPet:Show(); TukuiPet.Hide = function() end; TukuiPet.unit = "player" 
elseif( msg == "a" or msg == "arena" ) then
TukuiArena1:Show(); TukuiArena1.Hide = function() end; TukuiArena1.unit = "player"
TukuiArena2:Show(); TukuiArena2.Hide = function() end; TukuiArena2.unit = "player"
TukuiArena3:Show(); TukuiArena3.Hide = function() end; TukuiArena3.unit = "player"
elseif( msg == "boss" or msg == "b" ) then
TukuiBoss1:Show(); TukuiBoss1.Hide = function() end; TukuiBoss1.unit = "player"
TukuiBoss2:Show(); TukuiBoss2.Hide = function() end; TukuiBoss2.unit = "player"
TukuiBoss3:Show(); TukuiBoss3.Hide = function() end; TukuiBoss3.unit = "player"
elseif( msg == "buffs" ) then
UnitAura = function()
return 139, "Rank 1", "Interface\\Icons\\Spell_Holy_Penance", 1, "Magic", 0, 0, "player"
end

if( oUF ) then
for i, v in pairs( oUF.units ) do
if( v.UNIT_AURA ) then
v:UNIT_AURA( "UNIT_AURA", v.unit )
end
end
end
end
end

SlashCmdList.TestUI = TestUI
SLASH_TestUI1 = "/testui"


     
