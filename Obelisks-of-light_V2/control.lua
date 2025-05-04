--local turret_cycle = {"obelisk-nw", "obelisk-ne", "obelisk-se", "obelisk-sw"}
local turret_cycle = {"nw", "ne", "se", "sw"}

local function index_in_table(table, value)
	for k, v in pairs(table or {}) do
		if v == value then
			return k
		end
	end
	return 1
end

local function next_turret(name, shift)
	local old_name = string.sub(name, 1, -3)
	local diagonal = string.sub(name, -2, -1)
	local start_index = index_in_table(turret_cycle, diagonal)
	local end_index = (start_index - 1 + shift) % #turret_cycle + 1
	return old_name..turret_cycle[end_index]
end

local function cycle_turrets(event, run_mode)
	local player = game.players[event.player_index]
	local entity = player.selected
	if entity and entity.type == "electric-turret" then
		local entity_name = entity.name
		if string.sub(entity_name, -10, -3) == "obelisk-" -- "obelisk-sw"
			and (not string.find(entity_name, "tiberium"))
			then
			local position = entity.position
			local force = entity.force.name
			local surface = entity.surface
			local health = entity.health
			local kills = entity.kills
			local damage_dealt = entity.damage_dealt
			local new_name = next_turret(entity_name, run_mode)
			local energy = entity.energy
			entity.destroy()
			local new_turret = surface.create_entity{
				name = new_name,
				force = force,
				position = position,
				create_build_effect_smoke = false,
				--raise_built = true,
			}
			new_turret.health = health
			new_turret.kills = kills
			new_turret.damage_dealt = damage_dealt
			new_turret.last_user = player
			new_turret.energy = energy
			player.selected = new_turret
		end
	end
end

script.on_event("obelisk_clockwise", function(event)
	cycle_turrets(event, 1)
end)

script.on_event("obelisk_counterclockwise", function(event)
	cycle_turrets(event, -1)
end)

local direction_to_diagonal = {
	[defines.direction.north] = "sw",
	[defines.direction.east] = "nw",
	[defines.direction.south] = "ne",
	[defines.direction.west] = "se",
}

function on_new_entity(event)
	--event(s) could be filtered to avoid checking type
	local new_entity = event.created_entity or event.entity --Handle multiple event types
	if (new_entity.type == "electric-turret")
			and (string.sub(new_entity.name, -16, -1) == "obelisk-of-light")
			and (not string.find(new_entity.name, "tiberium"))
		then
		local surface = new_entity.surface
		local position = new_entity.position
		local force = new_entity.force
		local last_user = new_entity.last_user
		local health = new_entity.health

		local name = string.sub(new_entity.name, 1, -9) --remove "of-light"
		local diagonal = direction_to_diagonal[new_entity.direction]
		new_entity.destroy()
		new_entity = surface.create_entity{
			name = name .. diagonal,
			position = position,
			force = force,
			player = last_user,
			item = event.stack,
			raise_built = true,
		}
		new_entity.health = health
	end
end

script.on_event(defines.events.on_robot_built_entity, on_new_entity)
script.on_event(defines.events.script_raised_built, on_new_entity)
script.on_event(defines.events.script_raised_revive, on_new_entity)

script.on_event(defines.events.on_built_entity, function(event)
    local entity = event.created_entity
    if entity and entity.valid and entity.name:match("^obelisk") then
        local item = event.stack

        if item and item.valid_for_read and item.quality then
            entity.quality = item.quality
        end
    end
end)
