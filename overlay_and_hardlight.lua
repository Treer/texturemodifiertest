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
	description = "Hard light blend of Test gradient red/back with Test image (should be same as 'Overlay blend of Test image with Test gradient red/back')",
	tiles = {"gradient.png^[hardlight:testimage.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

-- Mismatched texture dimensions (Texture scaling)
minetest.register_node("texturemodifiertest:OverlayBlend_Testimage_with_TestImage2", {
	description = "Overlay blend of Test image with TestTVScreen",
	tiles = {"testimage.png^[overlay:testimage2.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:OverlayBlend_TestImage2_with_Testimage", {
	description = "Overlay blend of TestTVScreen with Test image (should be same as 'Hardlight blend of Test image with TestTVScreen')",
	tiles = {"testimage2.png^[overlay:testimage.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:HardlightBlend_Testimage_with_TestImage2", {
	description = "Hard light blend of Test image with TestTVScreen",
	tiles = {"testimage.png^[hardlight:testimage2.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:HardlightBlend_TestImage2_with_Testimage", {
	description = "Hard light blend of TestTVScreen with Test image (should be same as 'Overlay blend of Test image with TestTVScreen')",
	tiles = {"testimage2.png^[hardlight:testimage.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})


minetest.register_node("texturemodifiertest:Overlay_gray_with_Testimage2", {
	description = "Overlay blend of gray with TestTVScreen')",
	tiles = {"testimage.png^[contrast:-127^[hardlight:testimage2.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
