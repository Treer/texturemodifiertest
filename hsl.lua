-- test normal hue-saturation-lightness values

texturemodifiertest.create_node("hsl", nil, 150)
texturemodifiertest.create_node("hsl", nil, 120)
texturemodifiertest.create_node("hsl", nil, 90)
texturemodifiertest.create_node("hsl", nil, 60)
texturemodifiertest.create_node("hsl", nil, 30)
texturemodifiertest.create_node("hsl", nil, 0)
texturemodifiertest.create_node("hsl", nil, -30)
texturemodifiertest.create_node("hsl", nil, -60)
texturemodifiertest.create_node("hsl", nil, -90)
texturemodifiertest.create_node("hsl", nil, -120)
texturemodifiertest.create_node("hsl", nil, -150)


-- with saturation
texturemodifiertest.create_node("hsl", nil, 150,  30)
texturemodifiertest.create_node("hsl", nil, 90,   30)
texturemodifiertest.create_node("hsl", nil, 30,   30)
texturemodifiertest.create_node("hsl", nil, 0,    30)
texturemodifiertest.create_node("hsl", nil, -30,  30)
texturemodifiertest.create_node("hsl", nil, -90,  30)
texturemodifiertest.create_node("hsl", nil, -150, 30)

texturemodifiertest.create_node("hsl", nil, 150,  70)
texturemodifiertest.create_node("hsl", nil, 90,   70)
texturemodifiertest.create_node("hsl", nil, 30,   70)
texturemodifiertest.create_node("hsl", nil, 0,    70)
texturemodifiertest.create_node("hsl", nil, -30,  70)
texturemodifiertest.create_node("hsl", nil, -90,  70)
texturemodifiertest.create_node("hsl", nil, -150, 70)

texturemodifiertest.create_node("hsl", nil, 150,  -30)
texturemodifiertest.create_node("hsl", nil, 90,   -30)
texturemodifiertest.create_node("hsl", nil, 30,   -30)
texturemodifiertest.create_node("hsl", nil, 0,    -30)
texturemodifiertest.create_node("hsl", nil, -30,  -30)
texturemodifiertest.create_node("hsl", nil, -90,  -30)
texturemodifiertest.create_node("hsl", nil, -150, -30)

texturemodifiertest.create_node("hsl", nil, 150,  -70)
texturemodifiertest.create_node("hsl", nil, 90,   -70)
texturemodifiertest.create_node("hsl", nil, 30,   -70)
texturemodifiertest.create_node("hsl", nil, 0,    -70)
texturemodifiertest.create_node("hsl", nil, -30,  -70)
texturemodifiertest.create_node("hsl", nil, -90,  -70)
texturemodifiertest.create_node("hsl", nil, -150, -70)

-- with saturation and lightness
texturemodifiertest.create_node("hsl", nil, 150,  70, 50)
texturemodifiertest.create_node("hsl", nil, 90,   70, 50)
texturemodifiertest.create_node("hsl", nil, 0,    70, 50)
texturemodifiertest.create_node("hsl", nil, -90,  70, 50)
texturemodifiertest.create_node("hsl", nil, -150, 70, 50)

texturemodifiertest.create_node("hsl", nil, 150,  0, 50)
texturemodifiertest.create_node("hsl", nil, 30,   0, 50)
texturemodifiertest.create_node("hsl", nil, 0,    0, 50)
texturemodifiertest.create_node("hsl", nil, -30,  0, 50)
texturemodifiertest.create_node("hsl", nil, -150, 0, 50)

texturemodifiertest.create_node("hsl", nil, 150,  -70, 50)
texturemodifiertest.create_node("hsl", nil, 30,   -70, 50)
texturemodifiertest.create_node("hsl", nil, 0,    -70, 50)
texturemodifiertest.create_node("hsl", nil, -30,  -70, 50)
texturemodifiertest.create_node("hsl", nil, -150, -70, 50)

texturemodifiertest.create_node("hsl", nil, 150,  70, -50)
texturemodifiertest.create_node("hsl", nil, 30,   70, -50)
texturemodifiertest.create_node("hsl", nil, 0,    70, -50)
texturemodifiertest.create_node("hsl", nil, -30,  70, -50)
texturemodifiertest.create_node("hsl", nil, -150, 70, -50)

texturemodifiertest.create_node("hsl", nil, 150,  0, -50)
texturemodifiertest.create_node("hsl", nil, 30,   0, -50)
texturemodifiertest.create_node("hsl", nil, 0,    0, -50)
texturemodifiertest.create_node("hsl", nil, -30,  0, -50)
texturemodifiertest.create_node("hsl", nil, -150, 0, -50)

texturemodifiertest.create_node("hsl", nil, 150,  -70, -50)
texturemodifiertest.create_node("hsl", nil, 30,   -70, -50)
texturemodifiertest.create_node("hsl", nil, 0,    -70, -50)
texturemodifiertest.create_node("hsl", nil, -30,  -70, -50)
texturemodifiertest.create_node("hsl", nil, -150, -70, -50)

minetest.register_node("texturemodifiertest:Fantasy_testimage_satPlus30", {
	description = "Fantasy test image sat +30",
	tiles = {"fantasy.png^[hsl:0:30:0"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
minetest.register_node("texturemodifiertest:Fantasy_testimage_satPlus60", {
	description = "Fantasy test image sat +60",
	tiles = {"fantasy.png^[hsl:0:60:0"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
minetest.register_node("texturemodifiertest:Fantasy_testimage_satPlus90", {
	description = "Fantasy test image sat +90",
	tiles = {"fantasy.png^[hsl:0:90"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
minetest.register_node("texturemodifiertest:Fantasy_testimage_satPlus200", {
	description = "Fantasy test image sat +200",
	tiles = {"fantasy.png^[hsl:0:200:0"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
minetest.register_node("texturemodifiertest:Fantasy_testimage_satPlus300", {
	description = "Fantasy test image sat +300",
	tiles = {"fantasy.png^[hsl:0:300:0"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})
minetest.register_node("texturemodifiertest:Fantasy_testimage_satPlus1000", {
	description = "Fantasy test image sat +1000",
	tiles = {"fantasy.png^[hsl:0:1000:0"},
	groups = {cracky = 1, oddly_breakable_by_hand = 1},
})

