--[[

	TechAge
	=======

	Copyright (C) 2019 Joachim Stolberg

	LGPLv2.1+
	See LICENSE.txt for more information
	
	TA3 Coal Power Station Help

]]--

-- Load support for intllib.
local MP = minetest.get_modpath("techage")
local S, NS = dofile(MP.."/intllib.lua")

techage.register_chap_page(S("Electrical Age (TA3)"), S([[The Electrical Age is the third level of the available technic stages.
The goal of TA3 is to build a Coal Power Station and machines
to produce ores and chips for smart TA4 devices and machines.]]), "techage:wlanchip")

local HelpText = S([[1. Build a Coal Power Station according
to the plan with TA3 Firebox, TA3 Boiler, 
Steam Pipes, Cooler, Turbine and Generator.
2. Heat the Firebox with coal/charcoal
3. Fill the boiler with water (more than one bucket is needed)
4. Wait until the water is heated
5. Open the steam ventil
6. Connect the Generator with your machines by means of cables and junction boxes
7. Start the Generator]])

local Images = {
	
	{false, false, false, false, false, false, false},
	{"techage_steam_knee.png", 'techage_steam_pipe.png', 'techage_steam_pipe.png', 
		'techage_steam_pipe.png', 'techage_steam_pipe.png', 'techage_steam_pipe.png', "techage_steam_knee.png^[transformR270"},
	{'techage_steam_pipe.png^[transformR90', "techage_boiler_top_ta3.png", 'techage_steam_pipe.png', 
		'techage_steam_knee.png^[transformR270', 'techage_steam_knee.png', 
		"techage_filling_ta3.png^techage_frame_ta3.png^techage_cooler.png",
		"techage_steam_knee.png^[transformR180"},
	{"techage_steam_knee.png^[transformR90", "techage_boiler_bottom_ta3.png", false, 'techage_steam_pipe.png^[transformR90',
		'techage_steam_pipe.png^[transformR90'},
	{false, "techage_firebox_ta3.png", false, "techage_steam_knee.png^[transformR90", 
		"techage_filling_ta3.png^techage_appl_turbine.png^techage_frame_ta3.png",
		"techage_filling_ta3.png^techage_frame_ta3.png^techage_appl_generator.png"},
}

techage.register_help_page("Coal Power Station", HelpText, nil, Images)


techage.register_help_page(S("TA3 Electronic Fab"), 
S([[Used to produce WLAN Chips, 
needed for TA4 machines.]]), "techage:ta3_electronic_fab_pas")
