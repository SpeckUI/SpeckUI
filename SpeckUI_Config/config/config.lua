local C = {}

--[[ THIS IS A GUIDE ]]--

-------------------------------------------------------------
-- Adjust your default config here, it will overwrite default
-------------------------------------------------------------

C.general = {
	bordercolor = {0,0,0},             -- border color of tukui panels
    backdropcolor = {0,0,0,0.5},      -- backdrop color of all panel
    tinydpsreskin = false,
}

C.chat = {
    enable = true,                                 -- do I need to explain?
}

C.unitframes = {
	combatfeedback = false,
	showplayerinparty = true,
	gridonly = true,  
	classbar = false,
}

C.bags = {
	enable = true,
}

C.classbar = {
    --["class"] = { enabled, width, height }
runeBars = { true, 175, 5 },
eclipseBar = { true, 175, 8 },
holyPower = { true, 175, 2 },
comboPoints = { true, 175, 8 },
totemTimers = { true, 175, 5 },
soulShards = { true, 157, 4 },
}

C.auras = {
    consolidate = false,
}

C.nameplate = {
    showhealth = true,
}

C.datatext = {
	fps_ms = 4,                                   -- show fps and ms on panels
	system = 5,                                   -- show total memory and others systems infos on panels
	bags = 0,                                     -- show space used in bags on panels
	gold = 0,                                     -- show your current gold on panels
	wowtime = 6,                                  -- show time on panels
	guild = 0,                                    -- show number on guildmate connected on panels
	dur = 0,                                      -- show your equipment durability on panels.
	friends = 0,                                  -- show number of friends connected.
	dps_text = 0,                                 -- show a dps meter on panels
	hps_text = 0,                                 -- show a heal meter on panels
	power = 0,                                    -- show your attackpower/spellpower/healpower/rangedattackpower whatever stat is higher gets displayed
	haste = 0,                                    -- show your haste rating on panels.
	crit = 0,                                     -- show your crit rating on panels.
	avd = 0,                                      -- show your current avoidance against the level of the mob your targeting
	armor = 0,                                    -- show your armor value against the level mob you are currently targeting
	currency = 0,                                 -- show your tracked currency on panels
	hit = 0,                                      -- show hit rating
	mastery = 0,                                  -- show mastery rating
	micromenu = 0,                                -- add a micro menu thought datatext
	regen = 0,                                    -- show mana regeneration
	talent = 0,                                   -- show talent
	calltoarms = 0,                               -- show dungeon and call to arms
	
	time24 = true,                               -- set time to 24h format.
	localtime = true,                             -- set time to local time instead of server time.
	battleground = false,
}

C.media = {
	noinset = true,
	["uffont"] = [=[Interface\AddOns\SpeckUI\medias\fonts\pixelfont.ttf]=],
    ["normTex"] = [[Interface\AddOns\SpeckUI\medias\textures\CleanNormTex]],
    ["bubbleTex"] = [[Interface\AddOns\SpeckUI\medias\textures\CleanNormTex]],
	["glowTex"] = [[Interface\AddOns\SpeckUI\medias\textures\CleanNormTex]],
}

C.invite = {
    autoaccept = true,
}

C.actionbar = {
	hotkey = true,
	buttonspacing = 1,
	buttonsize = 25,
	petbuttonsize = 25,
}

C["sinaris"] = {
	["testui"] = true,
}

-------------------------------------------------------------
-- Stop Editing Config!
-------------------------------------------------------------

-- make it public
TukuiEditedDefaultConfig = C

