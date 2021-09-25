local modname        = minetest.get_current_modname()
local path           = minetest.get_modpath(modname)


texturemodifiertest = {}

texturemodifiertest.create_node = function(operation_name, prefix, arg1, arg2, arg3)

	local function arg_to_string(arg)
	
		local firstchar = string.sub(arg, 1, 1)
		if firstchar == '-' or string.find(firstchar, "%d") ~= nil then
			-- number
			if arg < 0 then 
				return "_neg" .. -arg
			else
				return "_" .. arg
			end
		elseif firstchar == "#" then
			-- A colour
			return "_" .. string.sub(arg, 3)
		else 
			-- a file name
			return "_" .. arg
		end			
	end
	
	local nodename = operation_name .. arg_to_string(arg1)
	local modifier = "^[" .. operation_name .. ":" .. arg1
	local desc = operation_name .. " " .. arg1
	
	if prefix ~= nil then 
		nodename = prefix .. "_" .. nodename
		desc = "[" .. prefix .. "] " .. desc
	end		

	if arg2 ~= nil then 
		nodename = nodename .. arg_to_string(arg2)
		modifier = modifier .. ":" .. arg2
		desc = desc .. " " .. arg2
	end

	if arg3 ~= nil then 
		nodename = nodename .. arg_to_string(arg3)
		modifier = modifier .. ":" .. arg3
		desc = desc .. " " .. arg3
	end
	
	minetest.register_node("texturemodifiertest:" .. nodename, {
		description = desc,
		tiles = {"testimage.png" .. modifier},
		groups = {cracky = 1, oddly_breakable_by_hand = 1},
	})
end

dofile(path .. DIR_DELIM .. "original_images.lua")
dofile(path .. DIR_DELIM .. "screen_and_multiply.lua")
dofile(path .. DIR_DELIM .. "overlay_and_hardlight.lua")
dofile(path .. DIR_DELIM .. "hsl.lua")
dofile(path .. DIR_DELIM .. "colorizehsl.lua")
dofile(path .. DIR_DELIM .. "contrast_brightness.lua")
dofile(path .. DIR_DELIM .. "fill.lua")
dofile(path .. DIR_DELIM .. "extreme_values.lua")
dofile(path .. DIR_DELIM .. "out_of_bound_values.lua")
