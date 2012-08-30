local T, C, L = unpack(Tukui)

local function SetTabStyle(frame)
local id = frame:GetID()
local chat = frame:GetName()
local tab = _G[chat.."Tab"]

	_G[chat.."TabText"]:SetTextColor(unpack(C.media.datatextcolor2))
	_G[chat.."TabText"]:SetFont(C.media.pixelfont, 12, "MONOCHROMEOUTLINE")
	_G[chat.."TabText"].SetTextColor = T.dummy
	_G[chat.."TabText"]:SetShadowOffset(0,0) 
end

-- Move EditBox
TukuiInfoLeft:ClearAllPoints()
TukuiInfoLeft:SetPoint("BOTTOM", ChatBackgroundLeft, "TOP", 0, 3)
TukuiInfoLeft:Width(370)
TukuiInfoLeft:Height(20)
TukuiInfoLeft:SetAlpha(0)

TukuiChat:HookScript( "OnEvent", function( self, event, ... )
	for i = 1, NUM_CHAT_WINDOWS do
		local chat = _G[format( "ChatFrame%s", i )]
		SetTabStyle( chat )
	end
end )

T.SetDefaultChatPosition = function(frame)
	if frame then
		local id = frame:GetID()
		local name = FCF_GetChatWindowInfo(id)

		-- set the size of chat frames
		--frame:Size(353,150)

		-- tell wow that we are using new size
		SetChatWindowSavedDimensions(id, 368,148)

  if id == 1 then
            frame:Size(368,148)
			frame:ClearAllPoints()
			frame:Point("BOTTOMLEFT", ChatBackgroundLeft, "BOTTOMLEFT", 1, 1)
		elseif id == 4 and name == LOOT then
			if not frame.isDocked then
			    frame:Size(368,148)
				frame:ClearAllPoints()
				frame:Point("BOTTOMLEFT", ChatBackgroundRight, "BOTTOMLEFT", 1, 1)
				frame:SetJustifyH("LEFT")
			end
		end

		-- save new default position and dimension
		FCF_SavePositionAndDimensions(frame)

		-- lock them if unlocked
		if not frame.isLocked then FCF_SetLocked(frame, 1) end
		end
		
		if event == "PLAYER_ENTERING_WORLD" then
		if C.chat.outlines then
			for i = 1, NUM_CHAT_WINDOWS do
				local chat = _G[format("ChatFrame%s", i)]
				local font, size = chat:GetFont()
				chat:SetFont(font, size, "OUTLINE")
			end
		end
	end
end

hooksecurefunc("FCF_RestorePositionAndDimensions", T.SetDefaultChatPosition)

local frame = CreateFrame("FRAME", "FooAddonFrame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");
local function eventHandler(self, event, ...)
 print("|cFF50C0FFSpeckUI - |cFFFFA500Loaded|cFF50C0FF - Beta v0.1");
end

frame:SetScript("OnEvent", eventHandler);