local T, C, L = unpack(Tukui)

TukuiMinimap:ClearAllPoints()
TukuiMinimap:Point("TOPLEFT", UIParent, "TOPLEFT", 2, -2)
TukuiMinimap:SetBackdropColor(0,0,0,0)
TukuiMinimap:SetBackdropBorderColor(0,0,0,0)
TukuiMinimap:CreateBorder(false, true)

TukuiMinimap:Size(140)
Minimap:Size(140)

Minimap:SetParent(TukuiMinimap)
Minimap:ClearAllPoints()
Minimap:Point("TOPLEFT", 0, -0)
Minimap:Point("BOTTOMRIGHT", -0, 0)

TukuiMinimapZoneText:SetFont(C.media.pixelfont, 12, "MONOCHROMEOUTLINE")
TukuiMinimapCoordText:SetFont(C.media.pixelfont, 12, "MONOCHROMEOUTLINE")

TukuiMinimapZone:SetBackdropColor(0,0,0,0)
TukuiMinimapCoord:SetBackdropColor(0,0,0,0)
TukuiMinimapZone:SetBackdropBorderColor(0,0,0,0)
TukuiMinimapCoord:SetBackdropBorderColor(0,0,0,0)







