--[[

	TechAge
	=======

	Copyright (C) 2019 Joachim Stolberg

	GPL v3
	See LICENSE.txt for more information
	
	pillar
	
]]--

local S = techage.S

minetest.register_node("techage:pillar", {
	description = S("TA4 Pillar"),
	tiles = {"techage_concrete.png"},
	drawtype = "mesh",
	mesh = "techage_pillar.obj",
	selection_box = {
		type = "fixed",
		fixed = {-8/32, -16/32, -8/32, 8/32, 16/32, 8/32},
	},

	groups = {cracky=1},
	on_rotate = screwdriver.disallow,
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})