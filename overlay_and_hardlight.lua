-- Overlay
minetest.register_node("texturemodifiertest:OverlayBlend_Testimage_with_Gradient", {
	description = "Overlay blend of Test image with Test gradient red/back",
	tiles = {"testimage.png^[overlay:gradient.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:OverlayBlend_Gradient_with_Testimage", {
	description = "Overlay blend of Test gradient red/back with Test image (should be same as 'Hardlight blend of Test image with Test gradient red/back')",
	tiles = {"gradient.png^[overlay:testimage.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})


-- Hard light
minetest.register_node("texturemodifiertest:HardlightBlend_Testimage_with_Gradient", {
	description = "Hard light blend of Test image with Test gradient red/back",
	tiles = {"testimage.png^[hardlight:gradient.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:HardlightBlend_Gradient_with_Testimage", {
	description = "Hard light blend of Test gradient red/back with Test image (should be same as 'Hard light blend of Test image with Test gradient red/back')",
	tiles = {"gradient.png^[hardlight:testimage.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
