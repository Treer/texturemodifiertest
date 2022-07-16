minetest.register_node("texturemodifiertest:testimage", {
	description = "Test image",
	tiles = {"testimage.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:gradient", {
	description = "Test gradient red/back",
	tiles = {"gradient.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

minetest.register_node("texturemodifiertest:Fantasy_testimage", {
	description = "Fantasy test image unmodified",
	tiles = {"fantasy.png"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
