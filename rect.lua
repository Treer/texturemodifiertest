-- Demonstrate [rect texture creation and alpha scaling/blending when combining using ^

minetest.register_node("texturemodifiertest:rect_red", {
	description = "8x8 solid red [rect texture",
	tiles = {"[rect:8x8:red"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:rect_redgreen", {
	description = "8x8 47%-transparent red blended on top of a 16x16 solid green",
	tiles = {"[rect:16x16:green^[rect:8x8:#F007"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
minetest.register_node("texturemodifiertest:rect_redgreenSize", {
	description = "sizechart under 8x8 47%-transparent red blended on top of a 16x16 solid green",
	tiles = {"[combine:64x64:0,0=64x64-testpat.png:0,0=([rect\\:16x16\\:green^[rect\\:8x8\\:#F007)"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:rect_greenblue", {
	description = "32x32 50%-transparent blue blended on top of 16x16 solid green",
	tiles = {"[rect:16x16:green^[rect:32x32:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:rect_greenbluetrans", {
	description = "32x32 50%-transparent blue blended on top of 16x16 25%-transparent green",
	tiles = {"[rect:16x16:green#40^[rect:32x32:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
minetest.register_node("texturemodifiertest:rect_greenbluetransSize", {
	description = "sizechart under 32x32 50%-transparent blue blended on top of 16x16 25%-transparent green",
	tiles = {"[combine:64x64:0,0=64x64-testpat.png:0,0=([rect\\:16x16\\:green#40\\^[rect\\:32x32\\:#00F8)"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:rect_combine", {
	description = "[combine colored rects on a solid grey background",
	tiles = {"[rect:33x33:#222^[combine:64x64:16,16=[rect\\:16x16\\:green:32,16=[rect\\:16x32\\:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:rect_combine2", {
	description = "[combine colored rects on an empty background",
	tiles = {"[combine:64x64:16,16=[rect\\:16x16\\:green:32,16=[rect\\:16x32\\:#00F8"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
