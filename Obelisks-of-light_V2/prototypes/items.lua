path = "__Obelisks-of-light_V2__"

data:extend{	
	{
		type = "item",
		name = "obelisk-nw",
		icon = path .. "/graphics/icons/Obelisknw.png",
		icon_size = 64, icon_mipmaps = 4,
		--flags = {"hidden"},
		place_result = "obelisk-nw",
		subgroup = "defensive-structure",
		order = "b[turret]-o[obelisk-right]",
		stack_size = 50
	},
	{
		type = "item",
		name = "obelisk-ne",
		icon = path .. "/graphics/icons/Obeliskne.png",
		icon_size = 64, icon_mipmaps = 4,
		--flags = {"hidden"},
		place_result = "obelisk-ne",
		subgroup = "defensive-structure",
		order = "b[turret]-o[obelisk-left]",
		stack_size = 50
	},
	{
		type = "item",
		name = "obelisk-sw",
		icon = path .. "/graphics/icons/Obelisksw.png",
		icon_size = 64, icon_mipmaps = 4,
		--flags = {"hidden"},
		place_result = "obelisk-sw",
		subgroup = "defensive-structure",
		order = "b[turret]-o[obelisk-right]",
		stack_size = 50
	},
	{
		type = "item",
		name = "obelisk-se",
		icon = path .. "/graphics/icons/Obeliskse.png",
		icon_size = 64, icon_mipmaps = 4,
		--flags = {"hidden"},
		place_result = "obelisk-se",
		subgroup = "defensive-structure",
		order = "b[turret]-o[obelisk-left]",
		stack_size = 50
	},
	{
		type = "item",
		name = "obelisk-of-light",
		icon = path .. "/graphics/icons/Obelisksw.png",
		icon_size = 64, icon_mipmaps = 4,
		flags = {"primary-place-result"},
		place_result = "obelisk-of-light",
		subgroup = "defensive-structure",
		order = "b[turret]-o[obelisk-of-light]",
		stack_size = 50
	}
}
