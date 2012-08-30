local P, C, L = unpack(Tukui)

-------------------------------------------------------------------------------------------
-- GAME MENU SKIN --
-------------------------------------------------------------------------------------------

-- HelpButton
local m1 = GameMenuButtonHelp
m1:SetBackdropBorderColor(0,0,0)
m1:SetBackdropColor(0,0,0,.5)  
m1:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m1:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- OptionsButton
local m2 = GameMenuButtonOptions
m2:SetBackdropColor(0,0,0,.5)
m2:SetBackdropBorderColor(0,0,0)
m2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- InterfaceButton
local m3 = GameMenuButtonUIOptions
m3:SetBackdropColor(0,0,0,.5)
m3:SetBackdropBorderColor(0,0,0)
m3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- KeyBindingsButton
local m4 = GameMenuButtonKeybindings
m4:SetBackdropColor(0,0,0,.5)
m4:SetBackdropBorderColor(0,0,0)
m4:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m4:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- MacrosButton
local m5 = GameMenuButtonMacros
m5:SetBackdropColor(0,0,0,.5)
m5:SetBackdropBorderColor(0,0,0)
m5:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m5:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- LogoutButton
local m6 = GameMenuButtonLogout
m6:SetBackdropColor(0,0,0,.5)
m6:SetBackdropBorderColor(0,0,0)
m6:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m6:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- ExitButton
local m7 = GameMenuButtonQuit
m7:SetBackdropColor(0,0,0,.5)
m7:SetBackdropBorderColor(0,0,0)
m7:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(255,0,0) end)
m7:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- ReturnToGameButton
local m8 = GameMenuButtonContinue
m8:SetBackdropColor(0,0,0,.5)
m8:SetBackdropBorderColor(0,0,0)
m8:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m8:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- MainWindow
local m10 = GameMenuFrame
m10:SetBackdropColor(0,0,0,.5)
m10.shadow:Kill()

-------------------------------------------------------------------------------------------
-- CHARACTER FRAME SKIN --
-------------------------------------------------------------------------------------------

-- MainWindow
local m11 = CharacterFrame
m11:SetBackdropColor(0,0,0,.5)
m11:SetBackdropBorderColor(0,0,0)
m11.shadow:Kill() 

-- AddBordeToPreviewArea
local m12 = CharacterModelFrame
m12:CreateBorder(false, true)
m12:SetBackdropColor(0,0,0,.2)

local m13 = CharacterFrameTab1.backdrop
m13:SetBackdropColor(0,0,0,.5)
m13:SetBackdropBorderColor(0,0,0)

local m14 = CharacterFrameTab2.backdrop
m14:SetBackdropColor(0,0,0,.5)
m14:SetBackdropBorderColor(0,0,0)

local m15 = CharacterFrameTab3.backdrop
m15:SetBackdropColor(0,0,0,.5)
m15:SetBackdropBorderColor(0,0,0)

local m16 = CharacterFrameTab4.backdrop
m16:SetBackdropColor(0,0,0,.5)
m16:SetBackdropBorderColor(0,0,0)

local m16 = PaperDollEquipmentManagerPaneEquipSet
m16:SetBackdropColor(0,0,0,.5)
m16:SetBackdropBorderColor(0,0,0)
m16:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m16:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local m16 = PaperDollEquipmentManagerPaneSaveSet
m16:SetBackdropColor(0,0,0,.5)
m16:SetBackdropBorderColor(0,0,0)
m16:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m16:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-------------------------------------------------------------------------------------------
-- INTERFACE FRAME SKIN --
-------------------------------------------------------------------------------------------	

-- MainWindow
local i1 = InterfaceOptionsFrame
i1:SetBackdropColor(0,0,0,.5)
i1:SetBackdropBorderColor(0,0,0)
i1.shadow:Kill()

-- DefaultsButton
local i2 = InterfaceOptionsFrameDefaults
i2:SetBackdropColor(0,0,0,.5)
i2:SetBackdropBorderColor(0,0,0)
i2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
i2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- OkayButton
local i3 = InterfaceOptionsFrameOkay
i3:SetBackdropColor(0,0,0,.5)
i3:SetBackdropBorderColor(0,0,0)
i3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
i3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- CancelButton
local i4 = InterfaceOptionsFrameCancel
i4:SetBackdropColor(0,0,0,.5)
i4:SetBackdropBorderColor(0,0,0)
i4:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
i4:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-------------------------------------------------------------------------------------------
-- OPTIONS FRAME SKIN --
-------------------------------------------------------------------------------------------

-- MainWindow
local o1 = VideoOptionsFrame
o1:SetBackdropColor(0,0,0,.5)
o1:SetBackdropBorderColor(0,0,0)
o1.shadow:Kill()

-- OkayButton
local o3 = VideoOptionsFrameOkay
o3:SetBackdropColor(0,0,0,.5)
o3:SetBackdropBorderColor(0,0,0)
o3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
o3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- CancelButton
local o4 = VideoOptionsFrameCancel
o4:SetBackdropColor(0,0,0,.5)
o4:SetBackdropBorderColor(0,0,0)
o4:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
o4:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- ApplyButton
local o5 = VideoOptionsFrameApply
o5:SetBackdropColor(0,0,0,.5)
o5:SetBackdropBorderColor(0,0,0)
o5:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
o5:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-------------------------------------------------------------------------------------------
-- TUKUI INSTALL/VERSION FRAME SKIN --
-------------------------------------------------------------------------------------------

-- MainWindow
local t1 = TukuiInstallFrame
t1:SetBackdropColor(0,0,0,.5)
t1:SetBackdropBorderColor(0,0,0)
t1.shadow:Kill()

-- LeftButton
local t2 = TukuiInstallOption1
t2:SetBackdropColor(0,0,0,.5)
t2:SetBackdropBorderColor(0,0,0)
t2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
t2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- RightButton
local t3 = TukuiInstallOption2
t3:SetBackdropColor(0,0,0,.5)
t3:SetBackdropBorderColor(0,0,0)
t3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
t3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-- VersionFrameWindow
local t4 = TukuiVersionFrame
t4:SetBackdropColor(0,0,0,.5)
t4:SetBackdropBorderColor(0,0,0)
t4.shadow:Kill()
t4:SetSize(350, 36)

-------------------------------------------------------------------------------------------
-- POPUP FRAME SKIN --
-------------------------------------------------------------------------------------------

-- MainWindow
local pop2 = StaticPopup3
pop2:SetBackdropColor(0,0,0,.5)
pop2:SetBackdropBorderColor(0,0,0)
pop2.shadow:Kill()

local pop3 = StaticPopup3Button1
pop3:SetBackdropColor(0,0,0,.5)
pop3:SetBackdropBorderColor(0,0,0)
pop3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
pop3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local pop4 = StaticPopup3Button2
pop4:SetBackdropColor(0,0,0,.5)
pop4:SetBackdropBorderColor(0,0,0)
pop4:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
pop4:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local pop1 = StaticPopup1
pop1:SetBackdropColor(0,0,0,.5)
pop1:SetBackdropBorderColor(0,0,0)
pop1.shadow:Kill()

local pop5 = StaticPopup1Button1
pop5:SetBackdropColor(0,0,0,.5)
pop5:SetBackdropBorderColor(0,0,0)
pop5:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
pop5:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local pop6 = StaticPopup1Button2
pop6:SetBackdropColor(0,0,0,.5)
pop6:SetBackdropBorderColor(0,0,0)
pop6:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
pop6:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-------------------------------------------------------------------------------------------
-- SPELL FRAME SKIN --
-------------------------------------------------------------------------------------------

local s1 = SpellBookFrame
s1:SetBackdropColor(0,0,0,.5)
s1:SetBackdropBorderColor(0,0,0)
s1.shadow:Kill()

local s2 = SpellBookCompanionSummonButton
s2:SetBackdropColor(0,0,0,.5)
s2:SetBackdropBorderColor(0,0,0)
s2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
s2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local s3 = SpellBookCompanionModelFrame
s3:SetBackdropColor(0,0,0,.2)
s3:SetBackdropBorderColor(0,0,0)

local s4 = SpellBookFrameTabButton1.backdrop
s4:SetBackdropColor(0,0,0,.5)
s4:SetBackdropBorderColor(0,0,0)

local s5 = SpellBookFrameTabButton2.backdrop
s5:SetBackdropColor(0,0,0,.5)
s5:SetBackdropBorderColor(0,0,0)

local s6 = SpellBookFrameTabButton3.backdrop
s6:SetBackdropColor(0,0,0,.5)
s6:SetBackdropBorderColor(0,0,0)

local s7 = SpellBookFrameTabButton4.backdrop
s7:SetBackdropColor(0,0,0,.5)
s7:SetBackdropBorderColor(0,0,0)

local s8 = SpellBookFrameTabButton5.backdrop
s8:SetBackdropColor(0,0,0,.5)
s8:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton1.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton2.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton3.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton4.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton5.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton6.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton7.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton8.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton9.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton10.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton11.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

local s9 = SpellButton12.backdrop
s9:SetBackdropColor(0,0,0,.5)
s9:SetBackdropBorderColor(0,0,0)

-------------------------------------------------------------------------------------------
-- QUEST FRAME SKIN --
-------------------------------------------------------------------------------------------

local q1 = QuestLogFrame
q1:SetBackdropColor(0,0,0,.5)
q1:SetBackdropBorderColor(0,0,0)
q1.shadow:Kill()

local qg1 = QuestFrame.backdrop
qg1:SetBackdropColor(0,0,0,.5)
qg1:SetBackdropBorderColor(0,0,0)
qg1.shadow:Kill()

GossipFrame.backdrop:SetBackdropColor(0,0,0,.5)
GossipFrame.backdrop:SetBackdropBorderColor(0,0,0)

local q2 = QuestLogFrameShowMapButton
q2:SetBackdropColor(0,0,0,.5)
q2:SetBackdropBorderColor(0,0,0)
q2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
q2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local q3 = QuestLogFrameAbandonButton
q3:SetBackdropColor(0,0,0,.5)
q3:SetBackdropBorderColor(0,0,0)
q3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
q3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local q4 = QuestLogFramePushQuestButton
q4:SetBackdropColor(0,0,0,.5)
q4:SetBackdropBorderColor(0,0,0)
q4:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
q4:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local q5 = QuestLogFrameTrackButton
q5:SetBackdropColor(0,0,0,.5)
q5:SetBackdropBorderColor(0,0,0)
q5:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
q5:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local q6 = QuestLogFrameCancelButton
q6:SetBackdropColor(0,0,0,.5)
q6:SetBackdropBorderColor(0,0,0)
q6:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
q6:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-------------------------------------------------------------------------------------------
-- FRIEND FRAME SKIN --
-------------------------------------------------------------------------------------------

local f1 = FriendsFrame
f1:SetBackdropColor(0,0,0,.5)
f1:SetBackdropBorderColor(0,0,0)

local f2 = FriendsFrameAddFriendButton
f2:SetBackdropColor(0,0,0,.5)
f2:SetBackdropBorderColor(0,0,0)
f2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f3 = FriendsFrameSendMessageButton
f3:SetBackdropColor(0,0,0,.5)
f3:SetBackdropBorderColor(0,0,0)
f3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f4 = FriendsFrameIgnorePlayerButton
f4:SetBackdropColor(0,0,0,.5)
f4:SetBackdropBorderColor(0,0,0)
f4:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f4:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f5 = FriendsFrameUnsquelchButton
f5:SetBackdropColor(0,0,0,.5)
f5:SetBackdropBorderColor(0,0,0)
f5:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f5:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f6 = WhoFrameWhoButton
f6:SetBackdropColor(0,0,0,.5)
f6:SetBackdropBorderColor(0,0,0)
f6:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f6:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f7 = WhoFrameAddFriendButton
f7:SetBackdropColor(0,0,0,.5)
f7:SetBackdropBorderColor(0,0,0)
f7:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f7:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f8 = WhoFrameGroupInviteButton
f8:SetBackdropColor(0,0,0,.5)
f8:SetBackdropBorderColor(0,0,0)
f8:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f8:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f9 = ChannelFrameNewButton
f9:SetBackdropColor(0,0,0,.5)
f9:SetBackdropBorderColor(0,0,0)
f9:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f9:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f10 = RaidFrameConvertToRaidButton
f10:SetBackdropColor(0,0,0,.5)
f10:SetBackdropBorderColor(0,0,0)
f10:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f10:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f11 = RaidFrameRaidInfoButton
f11:SetBackdropColor(0,0,0,.5)
f11:SetBackdropBorderColor(0,0,0)
f11:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f11:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local f12 = RaidInfoExtendButton
f12:SetBackdropColor(0,0,0,.5)
f12:SetBackdropBorderColor(.1,.1,.1)
f12:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f12:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(.1,.1,.1) end)

local f13 = RaidInfoCancelButton
f13:SetBackdropColor(0,0,0,.5)
f13:SetBackdropBorderColor(.1,.1,.1)
f13:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
f13:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(.1,.1,.1) end)

-------------------------------------------------------------------------------------------
-- ADD FRIEND FRAME SKIN --
-------------------------------------------------------------------------------------------

local af1 = AddFriendFrame
af1:SetBackdropColor(0,0,0,.5)
af1:SetBackdropBorderColor(0,0,0)

local af2 = AddFriendEntryFrameAcceptButton
af2:SetBackdropColor(0,0,0,.5)
af2:SetBackdropBorderColor(0,0,0)
af2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
af2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local af3 = AddFriendEntryFrameCancelButton
af3:SetBackdropColor(0,0,0,.5)
af3:SetBackdropBorderColor(0,0,0)
af3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
af3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-------------------------------------------------------------------------------------------
-- WORLD MAP SKIN --
-------------------------------------------------------------------------------------------

local m1 = WorldMapFrame.backdrop
m1:SetBackdropColor(0,0,0,.5)
m1:SetBackdropBorderColor(0,0,0)

local m2 = WorldMapZoomOutButton
m2:SetBackdropColor(0,0,0,.5)
m2:SetBackdropBorderColor(0,0,0)
m2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
m2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

-------------------------------------------------------------------------------------------
-- MAILBOX SKIN --
-------------------------------------------------------------------------------------------

local mail = MailFrame.backdrop
mail:SetBackdropColor(0,0,0,.5)
mail:SetBackdropBorderColor(0,0,0)
mail.shadow:Kill()

local mb1 = MailItem1.backdrop
mb1:SetBackdropColor(0,0,0,.5)
mb1:SetBackdropBorderColor(0,0,0)

local mb2 = MailItem2.backdrop
mb2:SetBackdropColor(0,0,0,.5)
mb2:SetBackdropBorderColor(0,0,0)

local mb3 = MailItem3.backdrop
mb3:SetBackdropColor(0,0,0,.5)
mb3:SetBackdropBorderColor(0,0,0)

local mb4 = MailItem4.backdrop
mb4:SetBackdropColor(0,0,0,.5)
mb4:SetBackdropBorderColor(0,0,0)

local mb5 = MailItem5.backdrop
mb5:SetBackdropColor(0,0,0,.5)
mb5:SetBackdropBorderColor(0,0,0)

local mb6 = MailItem6.backdrop
mb6:SetBackdropColor(0,0,0,.5)
mb6:SetBackdropBorderColor(0,0,0)

local mb7 = MailItem7.backdrop
mb7:SetBackdropColor(0,0,0,.5)
mb7:SetBackdropBorderColor(0,0,0)

local send = SendMailMailButton
send:SetBackdropColor(0,0,0,.5)
send:SetBackdropBorderColor(0,0,0)
send:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
send:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local send1 = SendMailCancelButton
send1:SetBackdropColor(0,0,0,.5)
send1:SetBackdropBorderColor(0,0,0)
send1:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
send1:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local om = OpenMailFrame.backdrop
om:SetBackdropColor(0,0,0,.5)
om:SetBackdropBorderColor(0,0,0)
om.shadow:Kill()

local om1 = OpenMailReplyButton
om1:SetBackdropColor(0,0,0,.5)
om1:SetBackdropBorderColor(0,0,0)
om1:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
om1:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)
local om2 = OpenMailDeleteButton
om2:SetBackdropColor(0,0,0,.5)
om2:SetBackdropBorderColor(0,0,0)
om2:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
om2:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

local om3 = OpenMailCancelButton
om3:SetBackdropColor(0,0,0,.5)
om3:SetBackdropBorderColor(0,0,0)
om3:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
om3:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)

OpenMailScrollFrame:SetBackdropColor(0,0,0,.5)
SendMailScrollFrame:SetBackdropColor(0,0,0,.5)
SendMailNameEditBox.backdrop:SetBackdropColor(0,0,0,.5)
SendMailSubjectEditBox.backdrop:SetBackdropColor(0,0,0,.5)

-------------------------------------------------------------------------------------------
-- PVP FRAME SKIN --
-------------------------------------------------------------------------------------------

PVPFrame.backdrop:SetBackdropColor(0,0,0,.5)
PVPFrame.backdrop:SetBackdropBorderColor(0,0,0)
PVPFrameLeftButton:SetBackdropColor(0,0,0,.5)
PVPFrameLeftButton:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
PVPFrameLeftButton:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)
PVPFrameRightButton:SetBackdropColor(0,0,0,.5)
PVPFrameRightButton:SetScript("OnEnter", function(self) self:SetBackdropBorderColor(.6,.6,.6) end)
PVPFrameRightButton:SetScript("OnLeave", function(self) self:SetBackdropBorderColor(0,0,0) end)
PVPFrameTab1.backdrop:SetBackdropColor(0,0,0,.5)
PVPFrameTab2.backdrop:SetBackdropColor(0,0,0,.5)
PVPFrameTab3.backdrop:SetBackdropColor(0,0,0,.5)
PVPFrameTab4.backdrop:SetBackdropColor(0,0,0,.5)


MerchantFrame.backdrop:SetBackdropColor(0,0,0,.5)
MerchantFrame.backdrop:SetBackdropBorderColor(0,0,0)
MerchantBuyBackItem.backdrop:SetBackdropColor(0,0,0,.5)
MerchantBuyBackItem.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem1.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem1.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem2.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem2.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem3.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem3.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem4.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem4.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem5.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem5.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem6.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem6.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem7.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem7.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem8.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem8.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem9.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem9.backdrop:SetBackdropBorderColor(0,0,0)
MerchantItem10.backdrop:SetBackdropColor(0,0,0,.5)
MerchantItem10.backdrop:SetBackdropBorderColor(0,0,0)
MerchantFrameTab1.backdrop:SetBackdropColor(0,0,0,.5)
MerchantFrameTab2.backdrop:SetBackdropColor(0,0,0,.5)