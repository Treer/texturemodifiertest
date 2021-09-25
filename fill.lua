-- Demonstrate [fill texture creation and alpha scaling/blending when combining using ^

minetest.register_node("texturemodifiertest:fill_red", {
	description = "8x8 solid red [fill texture",
	tiles = {"[fill:8x8:red"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:fill_redgreen_samesize", {
	description = "16x16 47%-transparent red blended on top of a 16x16 solid green",
	tiles = {"[fill:16x16:green^[fill:16x16:#F007"},
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
	tiles = {"[fill:64x64:#222^[combine:64x64:16,16=[fill\\:16x16\\:green:32,16=[fill\\:16x32\\:#00F8"},
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



--== test [fill with offset x,y ==--

minetest.register_node("texturemodifiertest:fill_red_center", {
	description = "8x8 red square centered on a 16x16 green background",
	tiles = {"[fill:16x16:green^[fill:8x8:4,4:#F00"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_red_clipped_bottomright", {
	description = "8x8 red square falling off the bottom right corner of a 16x16 green background, only 4x4 red is showing",
	tiles = {"[fill:16x16:green^[fill:8x8:12,12:#F00"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_red_clipped_topleft", {
	description = "8x8 red square falling off the top left corner of a 16x16 green background, only 4x4 red is showing",
	tiles = {"[fill:16x16:green^[fill:8x8:-4,-4:#F00"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_red_clipped_topright", {
	description = "8x8 red square falling off the top right corner of a 16x16 green background, only 4x4 red is showing",
	tiles = {"[fill:16x16:green^[fill:8x8:12,-4:#F00"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_red_clipped_bottomleft", {
	description = "8x8 red square falling off the bottom left corner of a 16x16 green background, only 4x4 red is showing",
	tiles = {"[fill:16x16:green^[fill:8x8:-4,12:#F00"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_lines", {
	description = "14x14 colourful frame drawn on a 16x16 green background",
	tiles = {"[fill:16x16:green^[fill:14x1:1,1:#F00^[fill:14x1:1,14:#F80^[fill:1x14:1,1:#00F^[fill:1x14:14,1:#08F"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
minetest.register_node("texturemodifiertest:fill_redgreen_samesize_zerooffset", {
	description = "16x16 47%-transparent red blended on top of a 16x16 solid green, specifying an offset of 0,0 - which should look no different to texturemodifiertest:fill_redgreen_samesize",
	tiles = {"[fill:16x16:green^[fill:16x16:0,0:#F007"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
minetest.register_node("texturemodifiertest:fill_redgreen_samesize_baseoffsetignored", {
	description = "16x16 47%-transparent red blended on top of a 16x16 solid green, where the green specified an offset that should ignored, so should look no different to texturemodifiertest:fill_redgreen_samesize",
	tiles = {"[fill:16x16:-30,-30:green^[fill:16x16:#F007"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})

minetest.register_node("texturemodifiertest:fill_yellow_center", {
	description = "checks that [fill doesn't change the size of the base image, should be a 8x8 yellow square centered on a 16x16 green background",
	tiles = {"[fill:16x16:red^[fill:32x32:green^[fill:8x8:4,4:yellow"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})


minetest.register_node("texturemodifiertest:fill_malformed1", {
	description = "test handling of malformed string [fill:16x16:-30:green",
	tiles = {"[fill:16x16:-30:green"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
	use_texture_alpha="blend"
})
