path = "__Obelisks-of-light__"
local hit_effects = require ("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds.lua")

--obelisk functions
--Left

local function obeliskleft_turret_extension(inputs)
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-Obeliskleftprep.png",
		priority = "medium",
		width = 68,
		height= 115,
		axially_symmetrical = false,
		direction_count = 1,
		frame_count = inputs.frame_count or 18,
		line_length = inputs.line_length or 9,
		animation_speed = 1 / 100,
		run_mode = inputs.run_mode or "forward",
		shift = util.by_pixel(0, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-Obeliskleftprep.png",
			priority = "medium",
			width = 136,
			height= 230,			
			axially_symmetrical = false,
			direction_count = 1,
			frame_count = inputs.frame_count or 18,
			line_length = inputs.line_length or 9,
			animation_speed = 1 / 100,
			run_mode = inputs.run_mode or "forward",
			shift = util.by_pixel(0, 0),
			scale = 0.5
		}
	}
end

local function obeliskleft_turret_extension_shadow(inputs)
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-ObeliskshadowL.png",
		width = 115,
		height= 115,
		frame_count = inputs.frame_count,
		line_length = inputs.line_length,
		repeat_count = inputs.repeat_count, 
		run_mode = inputs.run_mode or "forward",
		axially_symmetrical = false,
		direction_count = 1,
		draw_as_shadow = true,
		shift = util.by_pixel(10, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-ObeliskshadowL.png",
			width = 229,
			height= 229,
			frame_count = inputs.frame_count,
			line_length = inputs.line_length,
			repeat_count = inputs.repeat_count,			
			run_mode = inputs.run_mode or "forward",
			axially_symmetrical = false,
			direction_count = 1,
			draw_as_shadow = true,
			shift = util.by_pixel(20, 0),
			scale = 0.5
		}
	}
end

local function obeliskleft_turret_shooting()
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-Obeliskleftfire.png",
		priority = "medium",
		width = 68,
		height= 115,
		frame_count = 4,
		direction_count = 1,
		shift = util.by_pixel(0, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-Obeliskleftfire.png",
			priority = "medium",
			width = 136,
			height= 230,
			frame_count = 4,
			direction_count = 1,
			shift = util.by_pixel(0, 0),			
			scale = 0.5
		}
	}
end

local function obeliskleft_turret_shooting_glow()
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-Obeliskleftfire.png",
		priority = "medium",
		width = 68,
		height= 115,
		frame_count = 4,
		direction_count = 1,
		shift = util.by_pixel(0, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-Obeliskleftfire.png",
			priority = "medium",
			width = 136,
			height= 230,
			frame_count = 4,
			direction_count = 1,
			shift = util.by_pixel(0, 0),			
			scale = 0.5
		}
	}
end

--Right

local function obeliskright_turret_extension(inputs)
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-Obeliskrightprep.png",
		priority = "medium",
		width = 69,
		height= 115,
		axially_symmetrical = false,
		direction_count = 1,
		frame_count = inputs.frame_count or 18,
		line_length = inputs.line_length or 9,
		animation_speed = 1 / 100,
		run_mode = inputs.run_mode or "forward",
		shift = util.by_pixel(0, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-Obeliskrightprep.png",
			priority = "medium",
			width = 138,
			height= 230,			
			axially_symmetrical = false,
			direction_count = 1,
			frame_count = inputs.frame_count or 18,
			line_length = inputs.line_length or 9,
			animation_speed = 1 / 100,
			run_mode = inputs.run_mode or "forward",
			shift = util.by_pixel(0, 0),
			scale = 0.5
		}
	}
end

local function obeliskright_turret_extension_shadow(inputs)
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-ObeliskshadowR.png",
		width = 100,
		height= 87,
		frame_count = inputs.frame_count,
		line_length = inputs.line_length,
		repeat_count = inputs.repeat_count, 
		run_mode = inputs.run_mode or "forward",
		axially_symmetrical = false,
		direction_count = 1,
		draw_as_shadow = true,
		shift = util.by_pixel(10, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-ObeliskshadowR.png",
			width = 199,
			height= 173,
			frame_count = inputs.frame_count,
			line_length = inputs.line_length,
			repeat_count = inputs.repeat_count,			
			run_mode = inputs.run_mode or "forward",
			axially_symmetrical = false,
			direction_count = 1,
			draw_as_shadow = true,
			shift = util.by_pixel(20, 0),
			scale = 0.5
		}
	}
end

local function obeliskright_turret_shooting()
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-Obeliskrightfire.png",
		priority = "medium",
		width = 69,
		height= 115,
		frame_count = 4,
		direction_count = 1,
		shift = util.by_pixel(0, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-Obeliskrightfire.png",
			priority = "medium",
			width = 138,
			height= 230,
			frame_count = 4,
			direction_count = 1,
			shift = util.by_pixel(0, 0),			
			scale = 0.5
		}
	}
end

local function obeliskright_turret_shooting_glow()
	return
	{
		filename = path .. "/graphics/entity/obelisk-lr/lr-Obeliskrightfire.png",
		priority = "medium",
		width = 69,
		height= 115,
		frame_count = 4,
		direction_count = 1,
		shift = util.by_pixel(0, 0),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-lr/hr-Obeliskrightfire.png",
			priority = "medium",
			width = 138,
			height= 230,
			frame_count = 4,
			direction_count = 1,
			shift = util.by_pixel(0, 0),			
			scale = 0.5
		}
	}
end

-- Dims are lr width, lr height, hr width, hr height, shift x, shift y, lr line length, hr line length
local extension_dims = {}
extension_dims.nw = {86, 153, 171, 306, 0, 0, 8, 8}
extension_dims.ne = {86, 153, 171, 306, 0, 0, 8, 8}
extension_dims.se = {99, 153, 197, 306, 0, 0, 8, 8}
extension_dims.sw = {108, 153, 215, 306, 0, 0, 8, 8}
local function obelisk_turret_extension(inputs)
	return {
		filename = path .. "/graphics/entity/obelisk-nsew/lr-" .. inputs.dir .. "charge.png",
		priority = "medium",
		width = extension_dims[inputs.dir][1],
		height= extension_dims[inputs.dir][2],
		frame_count = 32,
		line_length = extension_dims[inputs.dir][7],
		direction_count = 1,
		animation_speed = 1 / 100,
		run_mode = inputs.run_mode or "forward",
		shift = util.by_pixel(extension_dims[inputs.dir][5], extension_dims[inputs.dir][6]),
		hr_version = {
			filename = path .. "/graphics/entity/obelisk-nsew/hr-" .. inputs.dir .. "charge.png",
			priority = "medium",
			width = extension_dims[inputs.dir][3],
			height= extension_dims[inputs.dir][4],
			frame_count = 32,
			line_length = extension_dims[inputs.dir][8],
			axially_symmetrical = false,
			direction_count = 1,
			animation_speed = 1 / 100,
			run_mode = inputs.run_mode or "forward",
			shift = util.by_pixel(extension_dims[inputs.dir][5], extension_dims[inputs.dir][6]),
			scale = 0.5
		}
	}
end
-- Dims are lr width, lr height, hr width, hr height, shift x, shift y, lr line length, hr line length
local extension_shadow_dims = {}
extension_shadow_dims.nw = {90, 59, 179, 117, 66, 44, 8, 8}
extension_shadow_dims.ne = {110, 47, 220, 93, 60, 40, 8, 4}
extension_shadow_dims.se = {240, 88, 480, 175, 92, 32, 4, 4}
extension_shadow_dims.sw = {171, 65, 341, 129, 40, 40, 4, 4}
local function obelisk_turret_extension_shadow(inputs)
	return {
		filename = path .. "/graphics/entity/obelisk-nsew/lr-" .. inputs.dir .. "shcharge.png",
		width = extension_shadow_dims[inputs.dir][1],
		height= extension_shadow_dims[inputs.dir][2],
		frame_count = 32,
		line_length = extension_shadow_dims[inputs.dir][7],
		animation_speed = 1 / 100,			
		run_mode = inputs.run_mode or "forward",
		axially_symmetrical = false,
		direction_count = 1,
		draw_as_shadow = true,
		shift = util.by_pixel(extension_shadow_dims[inputs.dir][5], extension_shadow_dims[inputs.dir][6]),
		hr_version = {
			filename = path .. "/graphics/entity/obelisk-nsew/hr-" .. inputs.dir .. "shcharge.png",
			width = extension_shadow_dims[inputs.dir][3],
			height= extension_shadow_dims[inputs.dir][4],
			frame_count = 32,
			line_length = extension_shadow_dims[inputs.dir][8],
			animation_speed = 1 / 100,			
			run_mode = inputs.run_mode or "forward",
			axially_symmetrical = false,
			direction_count = 1,
			draw_as_shadow = true,
			shift = util.by_pixel(extension_shadow_dims[inputs.dir][5], extension_shadow_dims[inputs.dir][6]),
			scale = 0.5
		}
	}
end

local shooting_dims = {}
shooting_dims.nw = {86, 153, 171, 306, 0, 0}
shooting_dims.ne = {86, 153, 171, 306, 0, 0}
shooting_dims.se = {99, 153, 197, 306, 0, 0}
shooting_dims.sw = {108, 153, 215, 306, 0, 0}
local function obelisk_turret_shooting(dir)
	return {
		filename = path .. "/graphics/entity/obelisk-nsew/lr-" .. dir .. "fire.png",
		priority = "medium",
		width = shooting_dims[dir][1],
		height= shooting_dims[dir][2],
		frame_count = 16,
		line_length = 8,
		direction_count = 1,
		shift = util.by_pixel(shooting_dims[dir][5], shooting_dims[dir][6]),
		hr_version = {
			filename = path .. "/graphics/entity/obelisk-nsew/hr-"  .. dir .. "fire.png",
			priority = "medium",
			width = shooting_dims[dir][3],
			height= shooting_dims[dir][4],
			frame_count = 16,
			line_length = 8,
			direction_count = 1,
			shift = util.by_pixel(shooting_dims[dir][5], shooting_dims[dir][6]),			
			scale = 0.5
		}
	}
end

local shooting_glow_dims = {}
shooting_glow_dims.nw = {86, 153, 171, 306, 0, 0}
shooting_glow_dims.ne = {86, 153, 171, 306, 0, 0}
shooting_glow_dims.se = {99, 153, 197, 306, 0, 0}
shooting_glow_dims.sw = {108, 153, 215, 306, 0, 0}
local function obelisk_turret_shooting_glow(dir)
	return {
		filename = path .. "/graphics/entity/obelisk-nsew/lr-" .. dir .. "fire.png",
		priority = "medium",
		width = shooting_glow_dims[dir][1],
		height= shooting_glow_dims[dir][2],
		frame_count = 16,
		line_length = 8,
		direction_count = 1,
		shift = util.by_pixel(shooting_glow_dims[dir][5], shooting_glow_dims[dir][6]),
		hr_version = {
			filename = path .. "/graphics/entity/obelisk-nsew/hr-".. dir .. "fire.png",
			priority = "medium",
			width = shooting_glow_dims[dir][3],
			height= shooting_glow_dims[dir][4],
			frame_count = 16,
			line_length = 8,
			direction_count = 1,
			shift = util.by_pixel(shooting_glow_dims[dir][5], shooting_glow_dims[dir][6]),			
			scale = 0.5
		}
	}
end

local base_picture_dims = {}
base_picture_dims.nw = {86, 153, 171, 306, 0, 0}
base_picture_dims.ne = {86, 153, 171, 306, 0, 0}
base_picture_dims.se = {99, 153, 197, 306, 0, 0}
base_picture_dims.sw = {108, 153, 215, 306, 0, 0}
local function obelisk_base_picture(dir)
	return 
	{
		filename = path .. "/graphics/entity/obelisk-nsew/lr-" .. dir .. "base.png",
		priority = "high",
		width = base_picture_dims[dir][1],
		height= base_picture_dims[dir][2],
		frame_count = 1,
		animation_speed = 1 / 4,
		line_length = 1,
		repeat_count = 1,
		direction_count = 1,
		shift = util.by_pixel(base_picture_dims[dir][5], base_picture_dims[dir][6]),
		draw_as_glow = false,
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-nsew/hr-" .. dir .. "base.png",
			priority = "high",
			width = base_picture_dims[dir][3],
			height= base_picture_dims[dir][4],
			frame_count = 1,
			animation_speed = 1 / 4,
			line_length = 1,
			repeat_count = 1,
			direction_count = 1,
			shift = util.by_pixel(base_picture_dims[dir][5], base_picture_dims[dir][6]),
			draw_as_glow = false,
			scale = 0.5
		}
	}
end

local base_picture_shadow_dims = {}
base_picture_shadow_dims.nw = {90, 59, 179, 117, 66, 44}
base_picture_shadow_dims.ne = {110, 47, 220, 93, 56, 42}
base_picture_shadow_dims.se = {240, 88, 480, 175, 92, 32}
base_picture_shadow_dims.sw = {171, 65, 341, 129, 40, 40}
local function obelisk_base_picture_shadow(dir)
	return 
	{
		filename = path .. "/graphics/entity/obelisk-nsew/lr-" .. dir .. "basesh.png",
		width = base_picture_shadow_dims[dir][1],
		height= base_picture_shadow_dims[dir][2],
		frame_count = 1,
		line_length = 1,
		repeat_count = 1,
		axially_symmetrical = false,
		direction_count = 1,
		draw_as_shadow = true,
		shift = util.by_pixel(base_picture_shadow_dims[dir][5], base_picture_shadow_dims[dir][6]),
		hr_version =
		{
			filename = path .. "/graphics/entity/obelisk-nsew/hr-" .. dir .. "basesh.png",
			width = base_picture_shadow_dims[dir][3],
			height= base_picture_shadow_dims[dir][4],
			frame_count = 1,
			line_length = 1,
			repeat_count = 1,		 
			axially_symmetrical = false,
			direction_count = 1,
			draw_as_shadow = true,
			shift = util.by_pixel(base_picture_shadow_dims[dir][5], base_picture_shadow_dims[dir][6]),
			scale = 0.5
		}
	}
end

local attack_offsets = {}
attack_offsets.nw = {-0.35, -2}
attack_offsets.ne = {0.3, -2}
attack_offsets.se = {0.3, -2}
attack_offsets.sw = {-0.3, -2}

local base_directional_obelisk = {
	type = "electric-turret",
	name = "obelisk-",
	localised_name = {"entity-name.obelisk-of-light"},
	localised_description = {"entity-description.obelisk-of-light"},
--	icon = path .. "/graphics/icons/Obelisk" .. dir .. ".png",
	icon_size = 64, icon_mipmaps = 4,
	minable = {mining_time = 0.6, result = "obelisk-of-light"},
	placeable_by = {item = "obelisk-of-light", count = 1},
	flags = {"placeable-player", "player-creation", "not-rotatable"},
	max_health = 1250,
	preparing_sound = sounds.obelisk_prep,
	folding_sound = sounds.obelisk_prep,
	corpse = "medium-remnants",
	dying_explosion = "artillery-turret-explosion",
	folding_speed = 1 / 100,
	prepared_speed = 1 / 100,
	preparing_speed = 0.05,
	--subgroup = "other",
	collision_box = {{-1.3, -0.15}, {1.3, 2.2}},
	selection_box = {{-1.3, -0.15}, {1.3, 2.2}},
	allow_copy_paste = true,
	energy_source =	{
		type = "electric",
		buffer_capacity = "1201kJ",
		input_flow_limit = "12600kW",
		drain = "35kW",
		usage_priority = "primary-input"	
	},	
	--light = {intensity = 2.0, size = 10, color = {r = 1.5, g = 1.0, b = 1.0}, shift = {64/64, -140/64}},
	glow_light_intensity = 0.5, -- defaults to 0
	attack_parameters =	{
		type = "beam",
		ammo_category = "green-laser",
		cooldown = 240,
		range = 38,
		source_direction_count = 64,
		source_offset = {0, 0},
		damage_modifier = 2.5,
		ammo_type =	{
			category = "green-laser",
			energy_consumption = "800kJ",
			action = {
				type = "direct",
				action_delivery = {
					type = "beam",
					beam = "obelisk-beam",
					max_length = 48,
					duration = 60,
					source_offset = nil,--attack_offsets[dir]
				}
			}
		}
	},	 
	call_for_help_radius = 48,
	vehicle_impact_sound = sounds.generic_impact
}

local compass_to_diagonal = {
	north = "sw",
	east = "nw",
	south = "ne",
	west = "se",
}

local function turret_prototype(dir)
	local obelisk = table.deepcopy(base_directional_obelisk)
	if dir ~= nil then
		obelisk.name = "obelisk-" .. dir
		obelisk.icon = path .. "/graphics/icons/Obelisk" .. dir .. ".png"
		obelisk.folded_animation = {
			north = {
				layers = {
					{
						filename = path .. "/graphics/entity/obelisk-nsew/lr-" .. dir .. "base.png",
						priority = "high",
						width = 108,
						height = 153,
						frame_count = 1,
						direction_count = 1,
						hr_version = {
							filename = path .. "/graphics/entity/obelisk-nsew/hr-" ..dir.. "base.png",
							priority = "high",
							width = 215,
							height = 306,
							frame_count = 1,
							direction_count = 1,
							scale = 0.5
						}
					}
				}
			},
			east = {
				layers = {
					{
						filename = path .. "/graphics/entity/obelisk-nsew/lr-" ..dir.. "base.png",
						priority = "high",
						width = 108,
						height = 153,
						frame_count = 1,
						direction_count = 1,
						hr_version = {
							filename = path .. "/graphics/entity/obelisk-nsew/hr-" ..dir.. "base.png",
							priority = "high",
							width = 215,
							height = 306,
							frame_count = 1,
							direction_count = 1,
							scale = 0.5
						}
					}
				}
			},
			south = {
				layers = {
					{
						filename = path .. "/graphics/entity/obelisk-nsew/lr-" ..dir.. "base.png",
						priority = "high",
						width = 108,
						height = 153,
						frame_count = 1,
						direction_count = 1,
						hr_version = {
							filename = path .. "/graphics/entity/obelisk-nsew/hr-" ..dir.. "base.png",
							priority = "high",
							width = 215,
							height = 306,
							frame_count = 1,
							direction_count = 1,
							scale = 0.5
						}
					}
				}
			},
			west = {
				layers = {
					{
						filename = path .. "/graphics/entity/obelisk-nsew/lr-" ..dir.. "base.png",
						priority = "high",
						width = 108,
						height = 153,
						frame_count = 1,
						direction_count = 1,
						hr_version = {
							filename = path .. "/graphics/entity/obelisk-nsew/hr-" ..dir.. "base.png",
							priority = "high",
							width = 215,
							height = 306,
							frame_count = 1,
							direction_count = 1,
							scale = 0.5
						}
					}
				}
			}
		}
		obelisk.graphics_set = {
			base_render_layer = "object",
			animation_layers = {
				folded_animation = {
					north = {
						layers = {
							obelisk_turret_extension{dir = "nw", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "nw", frame_count = 36, line_length = 8}
						}
					},
					east = {
						layers = {
							obelisk_turret_extension{dir = "ne", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "ne", frame_count = 36, line_length = 8}
						}
					},
					south = {
						layers = {
							obelisk_turret_extension{dir = "sw", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "sw", frame_count = 36, line_length = 8}
						}
					},
					west = {
						layers = {
							obelisk_turret_extension{dir = "se", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "se", frame_count = 36, line_length = 8}
						}
					}
				},
				preparing_animation = {
					layers = {
						north = {
							layers = {
								obelisk_turret_extension{dir = "nw", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "nw", frame_count = 36, line_length = 8}
							}
						},
						east = {
							layers = {
								obelisk_turret_extension{dir = "ne", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "ne", frame_count = 36, line_length = 8}
							}
						},
						south = {
							layers = {
								obelisk_turret_extension{dir = "sw", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "sw", frame_count = 36, line_length = 8}
							}
						},
						west = {
							layers = {
								obelisk_turret_extension{dir = "se", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "se", frame_count = 36, line_length = 8}
							}
						}           
					}
				},
				prepared_animation = {
					north = {
						layers = {
							obelisk_turret_shooting("nw")
						}
					},
					east = {
						layers = {
							obelisk_turret_shooting("ne")
						}
					},
					south = {
						layers = {
							obelisk_turret_shooting("sw")
						}
					},
					west = {
						layers = {
							obelisk_turret_shooting("se")
						}
					}
				},
				folding_animation = {
					north = {
						layers = {
							obelisk_turret_extension{dir = "nw", run_mode = "backward"}
						}
					},
					east = {
						layers = {
							obelisk_turret_extension{dir = "ne", run_mode = "backward"}
						}
					},
					south = {
						layers = {
							obelisk_turret_extension{dir = "sw", run_mode = "backward"}
						}
					},
					west = {
						layers = {
							obelisk_turret_extension{dir = "sw", run_mode = "backward"}
						}
					}
				}
			},
			glow_light_intensity = 0.5
		}
			
		obelisk.attack_parameters.ammo_type.action.action_delivery.source_offset = attack_offsets[dir]

		obelisk.base_picture = {
			layers = {
				obelisk_base_picture(dir),
				obelisk_base_picture_shadow(dir)
			}
		}
	else
		obelisk.name = "obelisk-of-light"
		obelisk.icon = path .. "/graphics/icons/Obelisksw.png"
		obelisk.flags = {"placeable-player", "player-creation"}

		obelisk.folded_animation = {}

		obelisk.base_picture = {}

		for compass, dir in pairs(compass_to_diagonal) do
			obelisk.folded_animation[compass] = {
				layers = {
					obelisk_turret_extension{dir = dir, frame_count = 36, line_length = 8},
					obelisk_turret_extension_shadow{dir = dir, frame_count = 36, line_length = 8}
				}
			}

			obelisk.base_picture[compass] = {
				layers = {
					obelisk_base_picture(dir),
					obelisk_base_picture_shadow(dir)
				}
			}
		end

		obelisk.graphics_set = {
			base_render_layer = "object",
			animation_layers = {
				folded_animation = {
					north = {
						layers = {
							obelisk_turret_extension{dir = "nw", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "nw", frame_count = 36, line_length = 8}
						}
					},
					east = {
						layers = {
							obelisk_turret_extension{dir = "ne", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "ne", frame_count = 36, line_length = 8}
						}
					},
					south = {
						layers = {
							obelisk_turret_extension{dir = "sw", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "sw", frame_count = 36, line_length = 8}
						}
					},
					west = {
						layers = {
							obelisk_turret_extension{dir = "se", frame_count = 36, line_length = 8},
							obelisk_turret_extension_shadow{dir = "se", frame_count = 36, line_length = 8}
						}
					}
				},
				preparing_animation = {
					layers = {
						north = {
							layers = {
								obelisk_turret_extension{dir = "nw", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "nw", frame_count = 36, line_length = 8}
							}
						},
						east = {
							layers = {
								obelisk_turret_extension{dir = "ne", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "ne", frame_count = 36, line_length = 8}
							}
						},
						south = {
							layers = {
								obelisk_turret_extension{dir = "sw", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "sw", frame_count = 36, line_length = 8}
							}
						},
						west = {
							layers = {
								obelisk_turret_extension{dir = "se", frame_count = 36, line_length = 8},
								obelisk_turret_extension_shadow{dir = "se", frame_count = 36, line_length = 8}
							}
						}           
					}
				},
				prepared_animation = {
					north = {
						layers = {
							obelisk_turret_shooting("nw")
						}
					},
					east = {
						layers = {
							obelisk_turret_shooting("ne")
						}
					},
					south = {
						layers = {
							obelisk_turret_shooting("sw")
						}
					},
					west = {
						layers = {
							obelisk_turret_shooting("se")
						}
					}
				},
				folding_animation = {
					north = {
						layers = {
							obelisk_turret_extension{dir = "nw", run_mode = "backward"}
						}
					},
					east = {
						layers = {
							obelisk_turret_extension{dir = "ne", run_mode = "backward"}
						}
					},
					south = {
						layers = {
							obelisk_turret_extension{dir = "sw", run_mode = "backward"}
						}
					},
					west = {
						layers = {
							obelisk_turret_extension{dir = "sw", run_mode = "backward"}
						}
					}
				}
			},
			glow_light_intensity = 0.5
		}

		obelisk.turret_base_has_direction = true --needed to show rotation while placing
	end
	return obelisk
end				

data:extend{
	turret_prototype("nw"),
	turret_prototype("ne"),
	turret_prototype("se"),
	turret_prototype("sw"),
	turret_prototype(nil),
}