-- Demonstrate [fill texture creation and alpha scaling/blending when combining using ^

minetest.register_node("texturemodifiertest:fill_red", {
	description = "8x8 solid red [fill texture",
	tiles = {"[fill:8x8:red"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:fill_redgreen", {
	description = "8x8 47%-transparent red blended on top of a 16x16 solid green",
	tiles = {"[fill:16x16:green^[fill:8x8:#F007"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
minetest.register_node("texturemodifiertest:fill_redgreenSize", {
	description = "sizechart under 8x8 47%-transparent red blended on top of a 16x16 solid green",
	tiles = {"[combine:64x64:0,0=64x64-testpat.png:0,0=([fill\\:16x16\\:green^[fill\\:8x8\\:#F007)"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:fill_greenblue", {
	description = "32x32 50%-transparent blue blended on top of 16x16 solid green",
	tiles = {"[fill:16x16:green^[fill:32x32:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_greenbluetrans", {
	description = "32x32 50%-transparent blue blended on top of 16x16 25%-transparent green",
	tiles = {"[fill:16x16:green#40^[fill:32x32:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
minetest.register_node("texturemodifiertest:fill_greenbluetransSize", {
	description = "sizechart under 32x32 50%-transparent blue blended on top of 16x16 25%-transparent green",
	tiles = {"[combine:64x64:0,0=64x64-testpat.png:0,0=([fill\\:16x16\\:green#40\\^[fill\\:32x32\\:#00F8)"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:fill_combine", {
	description = "[combine colored rects on a solid grey background",
	tiles = {"[fill:33x33:#222^[combine:64x64:16,16=[fill\\:16x16\\:green:32,16=[fill\\:16x32\\:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_combine2", {
	description = "[combine colored rects on an empty background",
	tiles = {"[combine:64x64:16,16=[fill\\:16x16\\:green:32,16=[fill\\:16x32\\:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

-- [fill used to be [rect
minetest.register_alias("texturemodifiertest:rect_red",                "texturemodifiertest:fill_red")
minetest.register_alias("texturemodifiertest:rect_redgreen",           "texturemodifiertest:fill_redgreen")
minetest.register_alias("texturemodifiertest:rect_redgreenSize",       "texturemodifiertest:fill_redgreenSize")
minetest.register_alias("texturemodifiertest:rect_greenblue",          "texturemodifiertest:fill_greenblue")
minetest.register_alias("texturemodifiertest:rect_greenbluetrans",     "texturemodifiertest:fill_greenbluetrans")
minetest.register_alias("texturemodifiertest:rect_greenbluetransSize", "texturemodifiertest:fill_greenbluetransSize")
minetest.register_alias("texturemodifiertest:rect_combine",            "texturemodifiertest:fill_combine")
minetest.register_alias("texturemodifiertest:rect_combine2",           "texturemodifiertest:fill_combine2")
