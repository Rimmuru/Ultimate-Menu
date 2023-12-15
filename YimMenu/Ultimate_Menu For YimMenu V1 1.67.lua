-- Ultimate Menu Script
-- Version: 1.67
-- Author: L7NEG

-- Required Stats
local MPX = string.format("MP%i_", stats.get_int("MPPLY_LAST_MP_CHAR"))

-- Initialize GUI Tab
local L7NEG = gui.get_tab("Ultimate Menu 1.67 By L7NEG")

-- Display startup messages
local function showMessage(message)
    gui.show_message(message)
end

showMessage("Ultimate Menu Successfully Loaded")
showMessage("Join Discord For More Updates")
showMessage("https://sub.l7neg.tk/discord")

-- Helper function to add text to the GUI
local function addTextToGui(text)
    L7NEG:add_button(text, function() end)
end

addTextToGui("Ultimate Menu 1.67 [V1]")
addTextToGui("https://l7neg.tk")

-- Self Menu Tab
local Self = L7NEG:add_tab("Self Menu")

-- Self Menu Options
Self:add_button("Remove Orbital Cannon Cooldown", function() 
    STATS.STAT_SET_INT(joaat(MPX .. "ORBITAL_CANNON_COOLDOWN"), 0, true)
end)

Self:add_button("Remove Transaction Error", function() 
    for i = 4536677, 4536679 do
        globals.set_int(i, 0)
    end 
end)

Self:add_button("Refill Nightclub Popularity", function() 
    STATS.STAT_SET_INT(joaat(MPX .. "CLUB_POPULARITY"), 1000, true) 
end)

-- Function to refill inventory/armour
local function refillInventory(amount)
    local items = {
        "NO_BOUGHT_YUM_SNACKS", "NO_BOUGHT_HEALTH_SNACKS", "NO_BOUGHT_EPIC_SNACKS",
        "NUMBER_OF_CHAMP_BOUGHT", "NUMBER_OF_ORANGE_BOUGHT", "NUMBER_OF_BOURGE_BOUGHT",
        "NUMBER_OF_SPRUNK_BOUGHT", "CIGARETTES_BOUGHT", "MP_CHAR_ARMOUR_1_COUNT",
        "MP_CHAR_ARMOUR_2_COUNT", "MP_CHAR_ARMOUR_3_COUNT", "MP_CHAR_ARMOUR_4_COUNT",
        "MP_CHAR_ARMOUR_5_COUNT", "BREATHING_APPAR_BOUGHT"
    }

    for _, item in ipairs(items) do
        STATS.STAT_SET_INT(joaat(MPX .. item), amount, true)
    end
end

Self:add_button("Refill Inventory/Armour", function()
    refillInventory(10)
end)

Self:add_button("Refill Inv/Armour x1000", function()
    refillInventory(1000)
end)

local StoryCharacters = L7NEG:add_tab("Story Mode")
StoryCharacters:add_button("Max Michael's's Cash", function()
    STATS.STAT_SET_INT(joaat("SP0_TOTAL_CASH"), 2147483646, true)
end)

StoryCharacters:add_button("Max Franklin's Cash", function()
    STATS.STAT_SET_INT(joaat("SP1_TOTAL_CASH"), 2147483646, true) 
end)

StoryCharacters:add_button("Max Trevor's Cash", function()
    STATS.STAT_SET_INT(joaat("SP2_TOTAL_CASH"), 2147483646, true) 
end)
	
local L7NEG3 = L7NEG:add_tab("1.67 Unlocker Menu")


L7NEG3:add_button("Unlock Missed Guns In The GunVan", function()
    globals.set_int(262145 + 34094 + 3, -22923932) ----- RailGun
    globals.set_int(262145 + 34094 + 4, -1238556825) ----- WidoMaker
    globals.set_int(262145 + 34094 + 5, -1355376991) ----- RayPistol
    globals.set_int(262145 + 34094 + 6, 1198256469) ----- HellBringer
    globals.set_int(262145 + 34094 + 7, 350597077) ----- TecPistol
    globals.set_int(262145 + 34094 + 8, 2138347493) ----- FireWork Launcher
end)

L7NEG3:add_button("Unlock Taxi Livery for Eudora", function()
	STATS.STAT_SET_MASKED_INT(MPX .. "DLC22022PSTAT_INT536", 10, 16, 8)
end)

L7NEG3:add_button("Unlock Taxi Livery for Broadway", function()
	STATS.STAT_SET_INT(joaat(MPX .. "AWD_TAXIDRIVER"), 50, true)
end)

local L7NEGEVENTS = L7NEG:add_tab("Events Menu")
local L7NEGSNOW = L7NEGEVENTS:add_tab("Snow Toggle Menu")

L7NEGSNOW:add_button("Toggle Snow On", function ()
    globals.set_int(262145 + 4752, 1)
end)

L7NEGSNOW:add_button("Toggle Snow Off", function ()
    globals.set_int(262145 + 4752, 0)
end)

---Full Account Unlocker Tool---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local FAUT = L7NEG:add_tab("Full Account Unlock Menu")
				   
--Character's Stats-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local CSU = FAUT:add_tab("Character's Stats")
	
local AcMenu = CSU:add_tab("Achievements")
local AcMMenu = AcMenu:add_tab("Unlock One By One Menu")
local AG = 4542602 + 1

local achievementButtons = {
    {"Welcome to Los Santos", 1},
    {"A Friendship Resurrected", 2},
    {"A Fair Day's Pay", 3},
    {"The Moment of Truth", 4},
    {"To Live or Die in Los Santos", 5},
    {"Diamond Hard", 6},
    {"Subversive", 7},
    {"Blitzed", 8},
    {"Small Town, Big Job", 9},
    {"The Government Gimps", 10},
    {"The Big One!", 11},
    {"Solid Gold, Baby!", 12},
    {"Career Criminal", 13},
    {"San Andreas Sightseer", 14},
    {"All's Fare in Love and War", 15},
    {"TP Industries Arms Race", 16},
    {"Multi-Disciplined", 17},
    {"From Beyond the Stars", 18},
    {"A Mystery, Solved", 19},
    {"Waste Management", 20},
    {"Red Mist", 21},
    {"Show Off", 22},
    {"Kifflom!", 23},
    {"Three Man Army", 24},
    {"Out of Your Depth", 25},
    {"Altruist Acolyte", 26},
    {"A Lot of Cheddar", 27},
    {"Trading Pure Alpha", 28},
    {"Pimp My Sidearm", 29},
    {"Wanted:Alive Or Alive", 30},
    {"Los Santos Customs", 31},
    {"Close Shave", 32},
    {"Off the Plane", 33},
    {"Three-Bit Gangster", 34},
    {"Making Moves", 35},
    {"Above the Law", 36},
    {"Numero Uno", 37},
    {"The Midnight Club", 38},
    {"Unnatural Selection", 39},
    {"Backseat Driver", 40},
    {"Run Like The Wind", 41},
    {"Clean Sweep", 42},
    {"Decorated", 43},
    {"Stick Up Kid", 44},
    {"Enjoy Your Stay", 45},
    {"Crew Cut", 46},
    {"Full Refund", 47},
    {"Dialling Digits", 48},
    {"American Dream", 49},
    {"A New Perspective", 50},
    {"Be Prepared", 51},
    {"In the Name of Science", 52},
    {"Dead Presidents", 53},
    {"Parole Day", 54},
    {"Shot Caller", 55},
    {"Four Way", 56},
    {"Live a Little", 57},
    {"Can't Touch This", 58},
    {"Mastermind", 59},
    {"Vinewood Visionary", 60},
    {"Majestic", 61},
    {"Humans of Los Santos", 62},
    {"First Time Director", 63},
    {"Animal Lover", 64},
    {"Ensemble Piece", 65},
    {"Cult Movie", 66},
    {"Location Scout", 67},
    {"Method Actor", 68},
    {"Cryptozoologist", 69},
    {"Getting Started", 70},
    {"The Data Breaches", 71},
    {"The Bogdan Problem", 72},
    {"The Doomsday Scenario", 73},
    {"A World Worth Saving", 74},
    {"Orbital Obliteration", 75},
    {"Elitist", 76},
    {"Masterminds", 77}
}

-- Function to add buttons to the menu
local function addAchievementButtons(menu, buttons)
    for _, button in ipairs(buttons) do
        local label = button[1]
        local value = button[2]
        menu:add_button(label, function() globals.set_int(AG, value) end)
    end
end

-- Add buttons to the AcMMenu
addAchievementButtons(AcMMenu, achievementButtons)

local L7NEG6 = L7NEG:add_tab("LSCM Unlocker Menu")

L7NEG6:add_button("Unlock All Rep Lvl 1000", function() for i = 262145 + 31835, 262145 + 31862 do globals.set_float(i, 100000) end end)

local LSCMNote = L7NEG6:add_tab("Read Me/Tutorial")

LSCMNote:add_button("Buy a membership, activate, sit in", function() end)
LSCMNote:add_button("a test car and go to the track", function() end)
LSCMNote:add_button("", function() end)
LSCMNote:add_button("If your level is not 1, then activate", function() end)
LSCMNote:add_button("and buy something in the LSCM store", function() end)
LSCMNote:add_button("", function() end)
LSCMNote:add_button("If you've used LS Tuner awards unlock", function() end)
LSCMNote:add_button("before, all unlocks will be temporary only", function() end)


local L7NEG7 = L7NEG:add_tab("Ultimate Money Methods Menu")

local CEO2 = 277873
local CEO3 = 277874
local CEO1 = 278108

local cs = "appsecuroserv"

local ci = "gb_contraband_sell"

local cb = "gb_contraband_buy"

local am = "am_mp_warehouse"

local am2= "am_mp_peds"

local checkbox = L7NEG7:add_checkbox("Enable Ceo Manager")

script.register_looped("yimceoloop", function(script)
    globals.set_int(CEO1, 6000000)
    globals.set_int(CEO2, 0)
    globals.set_int(CEO3, 0)

    script:yield()

    if checkbox:is_enabled() == true then
        if locals.get_int(ci, 2) == 1 then

            locals.set_int(ci, 1136, 1)

            locals.set_int(ci, 596, 0)

            locals.set_int(ci, 1125, 0) 

            locals.set_int(ci, 548, 7)

            script:sleep(500)

            locals.set_int(ci, 542, 99999)  
        end

        if locals.get_int(cs, 2) == 1 then

            script:sleep(500)

            locals.set_int(cs, 737, 1)

            script:sleep(200)

            locals.set_int(cs, 738, 1)

            script:sleep(200)

            locals.set_int(cs, 556, 3012)

            script:sleep(1000)
        end

        if locals.get_int(ci, 2) ~= 1 then  

            script:sleep(500)

            if locals.get_int(am, 2) == 1 then

                SCRIPT.REQUEST_SCRIPT("appsecuroserv")

                SYSTEM.START_NEW_SCRIPT("appsecuroserv", 8344)

                SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED("appsecuroserv")
            end
        end
    end
    script:sleep(500)
end)

L7NEG7:add_checkbox("Enable Nitghtclub $250k/15s (Safe AFK)")
script.register_looped("nightclubloop", function(script)
    script:yield()
    if checkbox:is_enabled() == true then
        log.info("Starting")
        STATS.STAT_SET_INT(joaat(MPX .. "CLUB_POPULARITY"), 1000, true)
        STATS.STAT_SET_INT(joaat(MPX .. "CLUB_PAY_TIME_LEFT"), -1, true)
		log.info("Finished")
        script:sleep(2500)
    end
end)

local L7NEG8 = L7NEG7:add_tab("WareHouse Data Editor")

L7NEG8:add_button("Auto-Reset stats-0/0Sales", function()
        STATS.STAT_SET_INT(joaat(MPX .. "LIFETIME_BUY_COMPLETE"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "LIFETIME_BUY_UNDERTAKEN"), 0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "LIFETIME_SELL_COMPLETE"),  0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "LIFETIME_SELL_UNDERTAKEN"),  0, true)
        STATS.STAT_SET_INT(joaat(MPX .. "LIFETIME_CONTRA_EARNINGS"),  0, true)
        globals.set_int(1575020, 11)         ----PlayerSessionBlank--------
        globals.set_int(1574589, 1)         ----PlayerSessionNew----------
        sleep(0.2)
        globals.set_int(1574589, 0)         ----PlayerSessionNew------
    end)

local L7NEG7N = L7NEG7:add_tab("Tutorial/ReadMe")

L7NEG7N:add_button("     Ceo Crates Method       ", function() end)
L7NEG7N:add_button("   First Enter Your Warehouse   ", function() end)
L7NEG7N:add_button("   Then Stand In Front Of Your Warehouse Computer And Then Active The Enable Ceo Manager    ", function() end)
L7NEG7N:add_button("", function() end)
L7NEG7N:add_button("https://dsc.gg/l7neg-", function() end)

local L7NEGH = L7NEG:add_tab("Heists Data Editor Menu")

local L7NEGAPARTMENT = L7NEGH:add_tab("Apartment Data Editor")

L7NEGAPARTMENT:add_button("Skip Current Apartment Heist Preps", function()
	STATS.STAT_SET_INT(joaat(MPX .. "HEIST_PLANNING_STAGE"), -1, true)
end)

L7NEGAPARTMENT:add_sameline()

L7NEGAPARTMENT:add_button("Reset Current Apartment Heist Preps", function()
	STATS.STAT_SET_INT(joaat(MPX .. "HEIST_PLANNING_STAGE"), 0, true)
end)


local L7NEGCASINO = L7NEGH:add_tab("Casino Heist")

L7NEGCASINO:add_button("One Click Setup Casino Silent&Sneaky", function()
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_APPROACH"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3_LAST_APPROACH"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_TARGET"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET1"), 127, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_DISRUPTSHIP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_KEYLEVELS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWWEAP"), 4, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWDRIVER"), 5, true) 
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWHACKER"), 5, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_VEHS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_WEAPS"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET0"), 262399, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_MASKS"), 2, true) 
end)

L7NEGCASINO:add_button("One Click Setup Casino The Big Con. Mode", function()
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_APPROACH"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3_LAST_APPROACH"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_TARGET"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET1"), 799, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_DISRUPTSHIP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_KEYLEVELS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWWEAP"), 4, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWDRIVER"), 5, true) 
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWHACKER"), 5, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_VEHS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_WEAPS"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET0"), 913623, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_MASKS"), 2, true) 
end)

L7NEGCASINO:add_button("One Click Setup Casino Agrresive Mode", function()
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_APPROACH"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3_LAST_APPROACH"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_TARGET"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET1"), 799, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_DISRUPTSHIP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_KEYLEVELS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWWEAP"), 4, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWDRIVER"), 5, true) 
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_CREWHACKER"), 5, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_VEHS"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_WEAPS"), 1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_BITSET0"), 1835223, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H3OPT_MASKS"), 2, true) 
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local L7NEGCAYO = L7NEGH:add_tab("Cayo Perlco Heist")

L7NEGCAYO:add_button("One Click Setup Panther + Hard Mode", function()
	STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_GEN"), 131071, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ENTR"), 63, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_BS_ABIL"), 63, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEAPONS"), 5, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_WEP_DISRP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_ARM_DISRP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_HEL_DISRP"), 3, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TARGET"), 5, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_TROJAN"), 2, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4CNF_APPROACH"), -1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C"), 0, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I"), 0, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT"), -1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4_PROGRESS"), 131055, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_I_SCOPED"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_CASH_C_SCOPED"), 0, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_I_SCOPED"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_WEED_C_SCOPED"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_I_SCOPED"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_COKE_C_SCOPED"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_I_SCOPED"), 0, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_GOLD_C_SCOPED"), 0, true)
	STATS.STAT_SET_INT(joaat(MPX .. "H4LOOT_PAINT_SCOPED"), -1, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4_MISSIONS"), 65535, true)
    STATS.STAT_SET_INT(joaat(MPX .. "H4_PLAYTHROUGH_STATUS"), 32, true)               
end)

L7NEGCAYO:add_button("Remove All CCTV's", function()
    for _, ent in pairs(entities.get_all_objects_as_handles()) do
        for __, cam in pairs(CamList) do
            if ENTITY.GET_ENTITY_MODEL(ent) == cam then
                ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent,true,true) --不执行这个下面会删除失败 @nord123#9579
                ENTITY.DELETE_ENTITY(ent)               
            end
        end
    end
end)

local CamList = {   --credits heist control
    joaat("prop_cctv_cam_01a"),
    joaat("prop_cctv_cam_01b"),
    joaat("prop_cctv_cam_02a"),
    joaat("prop_cctv_cam_03a"),
    joaat("prop_cctv_cam_04a"),
    joaat("prop_cctv_cam_04c"),
    joaat("prop_cctv_cam_05a"),
    joaat("prop_cctv_cam_06a"),
    joaat("prop_cctv_cam_07a"),
    joaat("prop_cs_cctv"),
    joaat("p_cctv_s"),
    joaat("hei_prop_bank_cctv_01"),
    joaat("hei_prop_bank_cctv_02"),
    joaat("ch_prop_ch_cctv_cam_02a"),
    joaat("xm_prop_x17_server_farm_cctv_01"),
}

local CPVMenu = L7NEGCAYO:add_tab("Size/Value Editor")

CPVMenu:add_button("Max Bag Size", function() globals.set_int(262145 + 29939, 2147483647) end)


L7NEGDOOMSDAY = L7NEGH:add_tab("Doomsday Heist Editor")

L7NEGDOOMSDAY:add_button("One Click Setup Act 1: The Data Breaches", function()
	STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FLOW_MISSION_PROG"), 7, true)
    STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FM_MISSION_PROG"), 7, true) 
end)

L7NEGDOOMSDAY:add_button("One Click Setup Act 2: The Bodgan Problem", function()
	STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FLOW_MISSION_PROG"), 240, true)
    STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FM_MISSION_PROG"), 248, true) 
end)

L7NEGDOOMSDAY:add_button("One Click Setup Act 3: Doomsday Scenario", function()
	STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FLOW_MISSION_PROG"), 15872, true)
    STATS.STAT_SET_INT(joaat(MPX .. "GANGOPS_FM_MISSION_PROG"), 16128, true) 
end)

local L7NEG5 = L7NEG:add_tab("Missions Selector And cooldown Menu")

L7NEG5:add_button("Remove Dax Missions CoolDown ", function()
STATS.STAT_SET_INT(joaat(MPX .. "XM22JUGGALOWORKCDTIMER"), -1, true) 
end)

L7NEG5:add_button("Remove VIP/MC Cool Down", function() 
STATS.STAT_SET_INT(joaat("MPPLY_VIPGAMEPLAYDISABLEDTIMER"), 0, true) end)

L7NEG5:add_button("Skip Yacht Misions", function() 
STATS.STAT_SET_INT(joaat(MPX .. "YACHT_MISSION_PROG"), 0, true) 
STATS.STAT_SET_INT(joaat(MPX .. "YACHT_MISSION_FLOW"), 21845, true) 
STATS.STAT_SET_INT(joaat(MPX .. "CASINO_DECORATION_GIFT_1"), -1, true) end)	


local L7NEG1 = L7NEG:add_tab("Credits")

local Yimura = L7NEG1:add_tab("Yimura")
Yimura:add_text("Yim Menu Cheat Developer")
Yimura:add_text("Cheat on GitHub:")
Yimura:add_text("https://github.com/YimMenu/YimMenu")

local L7NEGDEV = L7NEG1:add_tab("L7NEG")
L7NEGDEV:add_text("'Coded' The Script With <3 To You All")
L7NEGDEV:add_text("Profile on GitHub:")
L7NEGDEV:add_text("https://github.com/L7NEG")

local Rimuru = L7NEG1:add_tab("Rimuru")
Rimuru:add_text("Fixed the cancer")
Rimuru:add_text("Profile on GitHub:")
Rimuru:add_text("https://github.com/Rimmuru")

local SLON = L7NEG1:add_tab("SLON")
SLON:add_text("The code from the script ''YimCeo v0.3 by Slon_.lua'' was implemented")
SLON:add_text("Original Script On UnKnownCheats.me:")
SLON:add_text("https://www.unknowncheats.me/forum/grand-theft-auto-v/591335-yimceo-ceo-crates-method-yimmenu.html")

local Alestarov = L7NEG1:add_tab("Alestarov")
Alestarov:add_text("For His W 1 Click Cayo Setup")
Alestarov:add_text("Profile on GitHub:")
Alestarov:add_text("https://github.com/Alestarov")


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--[[
                                                                                                                                 
                                                                         dddddddd                                                
        CCCCCCCCCCCCC                                                    d::::::d  iiii           tttt                           
     CCC::::::::::::C                                                    d::::::d i::::i       ttt:::t                           
   CC:::::::::::::::C                                                    d::::::d  iiii        t:::::t                           
  C:::::CCCCCCCC::::C                                                    d:::::d               t:::::t                           
 C:::::C       CCCCCCrrrrr   rrrrrrrrr       eeeeeeeeeeee        ddddddddd:::::d iiiiiii ttttttt:::::ttttttt        ssssssssss   
C:::::C              r::::rrr:::::::::r    ee::::::::::::ee    dd::::::::::::::d i:::::i t:::::::::::::::::t      ss::::::::::s  
C:::::C              r:::::::::::::::::r  e::::::eeeee:::::ee d::::::::::::::::d  i::::i t:::::::::::::::::t    ss:::::::::::::s 
C:::::C              rr::::::rrrrr::::::re::::::e     e:::::ed:::::::ddddd:::::d  i::::i tttttt:::::::tttttt    s::::::ssss:::::s
C:::::C               r:::::r     r:::::re:::::::eeeee::::::ed::::::d    d:::::d  i::::i       t:::::t           s:::::s  ssssss 
C:::::C               r:::::r     rrrrrrre:::::::::::::::::e d:::::d     d:::::d  i::::i       t:::::t             s::::::s      
C:::::C               r:::::r            e::::::eeeeeeeeeee  d:::::d     d:::::d  i::::i       t:::::t                s::::::s   
 C:::::C       CCCCCC r:::::r            e:::::::e           d:::::d     d:::::d  i::::i       t:::::t    ttttttssssss   s:::::s 
  C:::::CCCCCCCC::::C r:::::r            e::::::::e          d::::::ddddd::::::ddi::::::i      t::::::tttt:::::ts:::::ssss::::::s
   CC:::::::::::::::C r:::::r             e::::::::eeeeeeee   d:::::::::::::::::di::::::i      tt::::::::::::::ts::::::::::::::s 
     CCC::::::::::::C r:::::r              ee:::::::::::::e    d:::::::::ddd::::di::::::i        tt:::::::::::tt s:::::::::::ss  
        CCCCCCCCCCCCC rrrrrrr                eeeeeeeeeeeeee     ddddddddd   dddddiiiiiiii          ttttttttttt    sssssssssss    
                                                                                                                                 
                                                                                                                                 
                                                                                                                                 
                                                                                                                                 
          Resources used -> Ultimate controller  
                         -> YimCeo by SLON                                                                                                       
                         -> API - Thank you Yimura <3 
                         -> Complied & Editied By L7NEG 
--]]
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
