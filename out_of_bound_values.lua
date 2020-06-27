-- test values outside of the texture modifier input range

-- Hue-Saturation-Lightness
texturemodifiertest.create_node("hsl", "OOB", 181)
texturemodifiertest.create_node("hsl", "OOB", -181)
texturemodifiertest.create_node("hsl", "OOB", 0, 101, -101)
texturemodifiertest.create_node("hsl", "OOB", 0, -101, 101)
texturemodifiertest.create_node("hsl", "OOB", 10000, 10000, 10000)

-- Colorize
texturemodifiertest.create_node("colorizehsl", "OOB", 181)
texturemodifiertest.create_node("colorizehsl", "OOB", -181)
texturemodifiertest.create_node("colorizehsl", "OOB", 0, 101, -101)
texturemodifiertest.create_node("colorizehsl", "OOB", 0, -101, 101)
texturemodifiertest.create_node("colorizehsl", "OOB", 10000, 10000, 10000)

-- Brightness-Contrast
texturemodifiertest.create_node("contrast", "OOB", 128)
texturemodifiertest.create_node("contrast", "OOB", -128)
texturemodifiertest.create_node("contrast", "OOB", 0, 128)
texturemodifiertest.create_node("contrast", "OOB", 0, -128)
texturemodifiertest.create_node("contrast", "OOB", 10000, 10000)
