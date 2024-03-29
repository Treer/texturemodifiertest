-- test normal hue-saturation-lightness values

texturemodifiertest.create_node("colorizehsl", nil, 150)
texturemodifiertest.create_node("colorizehsl", nil, 120)
texturemodifiertest.create_node("colorizehsl", nil, 90)
texturemodifiertest.create_node("colorizehsl", nil, 60)
texturemodifiertest.create_node("colorizehsl", nil, 30)
texturemodifiertest.create_node("colorizehsl", nil, 0)
texturemodifiertest.create_node("colorizehsl", nil, -30)
texturemodifiertest.create_node("colorizehsl", nil, -60)
texturemodifiertest.create_node("colorizehsl", nil, -90)
texturemodifiertest.create_node("colorizehsl", nil, -120)
texturemodifiertest.create_node("colorizehsl", nil, -150)


-- with saturation
texturemodifiertest.create_node("colorizehsl", nil, 150,  30)
texturemodifiertest.create_node("colorizehsl", nil, 90,   30)
texturemodifiertest.create_node("colorizehsl", nil, 30,   30)
texturemodifiertest.create_node("colorizehsl", nil, 0,    30)
texturemodifiertest.create_node("colorizehsl", nil, -30,  30)
texturemodifiertest.create_node("colorizehsl", nil, -90,  30)
texturemodifiertest.create_node("colorizehsl", nil, -150, 30)

texturemodifiertest.create_node("colorizehsl", nil, 150,  70)
texturemodifiertest.create_node("colorizehsl", nil, 90,   70)
texturemodifiertest.create_node("colorizehsl", nil, 30,   70)
texturemodifiertest.create_node("colorizehsl", nil, 0,    70)
texturemodifiertest.create_node("colorizehsl", nil, -30,  70)
texturemodifiertest.create_node("colorizehsl", nil, -90,  70)
texturemodifiertest.create_node("colorizehsl", nil, -150, 70)

texturemodifiertest.create_node("colorizehsl", nil, 150,  -30)
texturemodifiertest.create_node("colorizehsl", nil, 90,   -30)
texturemodifiertest.create_node("colorizehsl", nil, 30,   -30)
texturemodifiertest.create_node("colorizehsl", nil, 0,    -30)
texturemodifiertest.create_node("colorizehsl", nil, -30,  -30)
texturemodifiertest.create_node("colorizehsl", nil, -90,  -30)
texturemodifiertest.create_node("colorizehsl", nil, -150, -30)

texturemodifiertest.create_node("colorizehsl", nil, 150,  -70)
texturemodifiertest.create_node("colorizehsl", nil, 90,   -70)
texturemodifiertest.create_node("colorizehsl", nil, 30,   -70)
texturemodifiertest.create_node("colorizehsl", nil, 0,    -70)
texturemodifiertest.create_node("colorizehsl", nil, -30,  -70)
texturemodifiertest.create_node("colorizehsl", nil, -90,  -70)
texturemodifiertest.create_node("colorizehsl", nil, -150, -70)

-- with saturation and lightness
texturemodifiertest.create_node("colorizehsl", nil, 150,  70, 50)
texturemodifiertest.create_node("colorizehsl", nil, 90,   70, 50)
texturemodifiertest.create_node("colorizehsl", nil, 0,    70, 50)
texturemodifiertest.create_node("colorizehsl", nil, -90,  70, 50)
texturemodifiertest.create_node("colorizehsl", nil, -150, 70, 50)

texturemodifiertest.create_node("colorizehsl", nil, 150,  0, 50)
texturemodifiertest.create_node("colorizehsl", nil, 30,   0, 50)
texturemodifiertest.create_node("colorizehsl", nil, 0,    0, 50)
texturemodifiertest.create_node("colorizehsl", nil, -30,  0, 50)
texturemodifiertest.create_node("colorizehsl", nil, -150, 0, 50)

texturemodifiertest.create_node("colorizehsl", nil, 150,  -70, 50)
texturemodifiertest.create_node("colorizehsl", nil, 30,   -70, 50)
texturemodifiertest.create_node("colorizehsl", nil, 0,    -70, 50)
texturemodifiertest.create_node("colorizehsl", nil, -30,  -70, 50)
texturemodifiertest.create_node("colorizehsl", nil, -150, -70, 50)

texturemodifiertest.create_node("colorizehsl", nil, 150,  70, -50)
texturemodifiertest.create_node("colorizehsl", nil, 30,   70, -50)
texturemodifiertest.create_node("colorizehsl", nil, 0,    70, -50)
texturemodifiertest.create_node("colorizehsl", nil, -30,  70, -50)
texturemodifiertest.create_node("colorizehsl", nil, -150, 70, -50)

texturemodifiertest.create_node("colorizehsl", nil, 150,  0, -50)
texturemodifiertest.create_node("colorizehsl", nil, 30,   0, -50)
texturemodifiertest.create_node("colorizehsl", nil, 0,    0, -50)
texturemodifiertest.create_node("colorizehsl", nil, -30,  0, -50)
texturemodifiertest.create_node("colorizehsl", nil, -150, 0, -50)

texturemodifiertest.create_node("colorizehsl", nil, 150,  -70, -50)
texturemodifiertest.create_node("colorizehsl", nil, 30,   -70, -50)
texturemodifiertest.create_node("colorizehsl", nil, 0,    -70, -50)
texturemodifiertest.create_node("colorizehsl", nil, -30,  -70, -50)
texturemodifiertest.create_node("colorizehsl", nil, -150, -70, -50)

-- saturation above 100% (i.e. more than double)
texturemodifiertest.create_node("colorizehsl", nil,   0, 200)
texturemodifiertest.create_node("colorizehsl", nil,   0, 600)
texturemodifiertest.create_node("colorizehsl", nil,  30, 200)
texturemodifiertest.create_node("colorizehsl", nil, -30, 600)
