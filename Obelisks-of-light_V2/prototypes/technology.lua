data:extend{
	{
		type = "technology",
		name = "Obelisks-of-light",
		icon_size = 64, 
		icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisksw.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "obelisk-of-light",
			}
		},
		prerequisites = {"laser", "military-science-pack"},
		unit =
		{
			count = 150,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 40
		},
		order = "a-j-b"
	},
	{
		type = "technology",
		name = "Obelisk-weapons-damage-1",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obeliskd.png",
		effects =
		{
			{
				type = "ammo-damage",
				ammo_category = "green-laser",
				modifier = 0.2
			}
		},
		prerequisites = {"Obelisks-of-light"},
		unit =
		{
			count = 100*1,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "e-j-a"
	},
	{
		type = "technology",
		name = "Obelisk-weapons-damage-2",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obeliskd.png",
		effects =
		{
			{
				type = "ammo-damage",
				ammo_category = "green-laser",
				modifier = 0.2
			}
		},
		prerequisites = {"Obelisk-weapons-damage-1"},
		unit =
		{
			count = 100*2,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "e-l-b"
	},
	{
		type = "technology",
		name = "Obelisk-weapons-damage-3",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obeliskd.png",
		effects =
		{
			{
				type = "ammo-damage",
				ammo_category = "green-laser",
				modifier = 0.3
			}
		},
		prerequisites = {"Obelisk-weapons-damage-2"},
		unit =
		{
			count = 100*3,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-c"
	},
	{
		type = "technology",
		name = "Obelisk-weapons-damage-4",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obeliskd.png",
		effects =
		{
			{
				type = "ammo-damage",
				ammo_category = "green-laser",
				modifier = 0.4
			}
		},
		prerequisites = {"Obelisk-weapons-damage-3"},
		unit =
		{
			count = 100*4,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-d"
	},
	{
		type = "technology",
		name = "Obelisk-weapons-damage-5",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obeliskd.png",
		effects =
		{
			{
				type = "ammo-damage",
				ammo_category = "green-laser",
				modifier = 0.5
			},
			{
				type = "ammo-damage",
				ammo_category = "beam",
				modifier = 0.4
			}
		},
		prerequisites = {"Obelisk-weapons-damage-4"},
		unit =
		{
			count = 100*5,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-e"
	},
	{
		type = "technology",
		name = "Obelisk-weapons-damage-6",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obeliskd.png",
		effects =
		{
			{
				type = "ammo-damage",
				ammo_category = "green-laser",
				modifier = 0.7
			},
			{
				type = "ammo-damage",
				ammo_category = "beam",
				modifier = 0.6
			}
		},
		prerequisites = {"Obelisk-weapons-damage-5"},
		unit =
		{
			count = 100*6,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-f"
	},
	{
		type = "technology",
		name = "Obelisk-weapons-damage-7",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obeliskd.png",
		effects =
		{
			{
				type = "ammo-damage",
				ammo_category = "green-laser",
				modifier = 0.7
			},
			{
				type = "ammo-damage",
				ammo_category = "beam",
				modifier = 0.6
			}
		},
		prerequisites = {"Obelisk-weapons-damage-6", "space-science-pack"},
		unit =
		{
			count_formula = "2^(L-7)*1024",
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1}
			},
			time = 60
		},
		max_level = "infinite",
		upgrade = true,
		order = "e-l-f"
	},
	{
		type = "technology",
		name = "Obelisk-Shooting-Speed-1",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisks.png",
		effects =
		{
			{
				type = "gun-speed",
				ammo_category = "green-laser",
				modifier = 0.2
			}
		},
		prerequisites = {"Obelisks-of-light"},
		unit =
		{
			count = 100*1,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "e-j-a"
	},
	{
		type = "technology",
		name = "Obelisk-Shooting-Speed-2",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisks.png",
		effects =
		{
			{
				type = "gun-speed",
				ammo_category = "green-laser",
				modifier = 0.2
			}
		},
		prerequisites = {"Obelisk-Shooting-Speed-1"},
		unit =
		{
			count = 100*2,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 30
		},
		upgrade = true,
		order = "e-l-b"
	},
	{
		type = "technology",
		name = "Obelisk-Shooting-Speed-3",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisks.png",
		effects =
		{
			{
				type = "gun-speed",
				ammo_category = "green-laser",
				modifier = 0.3
			}
		},
		prerequisites = {"Obelisk-Shooting-Speed-2"},
		unit =
		{
			count = 100*3,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-c"
	},
	{
		type = "technology",
		name = "Obelisk-Shooting-Speed-4",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisks.png",
		effects =
		{
			{
				type = "gun-speed",
				ammo_category = "green-laser",
				modifier = 0.4
			}
		},
		prerequisites = {"Obelisk-Shooting-Speed-3"},
		unit =
		{
			count = 100*4,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-d"
	},
	{
		type = "technology",
		name = "Obelisk-Shooting-Speed-5",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisks.png",
		effects =
		{
			{
				type = "gun-speed",
				ammo_category = "green-laser",
				modifier = 0.4
			}
		},
		prerequisites = {"Obelisk-Shooting-Speed-4"},
		unit =
		{
			count = 100*5,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-e"
	},
	{
		type = "technology",
		name = "Obelisk-Shooting-Speed-6",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisks.png",
		effects =
		{
			{
				type = "gun-speed",
				ammo_category = "green-laser",
				modifier = 0.6
			}
		},
		prerequisites = {"Obelisk-Shooting-Speed-5"},
		unit =
		{
			count = 100*6,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 60
		},
		upgrade = true,
		order = "e-l-f"
	},
	{
		type = "technology",
		name = "Obelisk-Shooting-Speed-7",
		icon_size = 64, icon_mipmaps = 4,
		icon = path .. "/graphics/icons/Obelisks.png",
		effects =
		{
			{
				type = "gun-speed",
				ammo_category = "green-laser",
				modifier = 0.10
			}
		},
		prerequisites = {"Obelisk-Shooting-Speed-6", "space-science-pack"},
		unit =
		{
			count_formula = "2^(L-7)*1024",
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1}
			},
			time = 60
		},
		max_level = "infinite",
		upgrade = true,
		order = "e-l-f"
	}

	
}
