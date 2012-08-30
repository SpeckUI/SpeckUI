local T, C, L = unpack(Tukui)


-- Kill Things I Dont Want
local panels = { TukuiInfoRight, TukuiMinimapStatsLeft, TukuiMinimapStatsRight, TukuiInfoLeftLineVertical, TukuiInfoRightLineVertical, TukuiCubeLeft, TukuiCubeRight, TukuiLineToABLeft, TukuiLineToABRight, TukuiLineToPetActionBarBackground, TukuiBar2, TukuiBar3, TukuiBar6, TukuiBar7, TukuiBar3Button, TukuiBar2Button, TukuiBar5ButtonTop, TukuiBar5ButtonBottom, TukuiBar4Button}
for _, panel in pairs(panels) do
	panel:Kill()
end



