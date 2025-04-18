local explosion_animations = require("__base__/prototypes/entity/explosion-animations")

data:extend{
	--new projectile
	{
		type = "projectile",
		name = "green-laser",
		flags = {"not-on-map"},
		acceleration = 0.03,
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "create-entity",
						entity_name = "laser-bubble"
					},
					{
						type = "damage",
						damage = { amount = 10, type = "laser"}
					}
				}
			}
		},
		--light = {intensity = 0.5, size = 10},
		animation =
		{
			filename = path .. "/graphics/entity/blue-beam/green-laser.png",
			draw_as_glow = true,
			tint = {r=0.0, g=1.0, b=0.0},
			frame_count = 1,
			width = 7,
			height = 14,
			priority = "high",
			blend_mode = "additive"
		}
	}
}
