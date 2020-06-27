-- Demonstrate screen and multiply texture blends performed by using overlay modifier with brightness adjustment

minetest.register_node("texturemodifiertest:ScreenBlend_Testimage_with_Gradient", {
	description = "Screen blend of Test image with Test gradient red/back",
	tiles = {"testimage.png^[contrast:0:64^[overlay:gradient.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:MultiplyBlend_Testimage_with_Gradient", {
	description = "Multiply blend of Test image with Test gradient red/back",
	tiles = {"testimage.png^[contrast:0:-64^[overlay:gradient.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
