local laser_beam_blend_mode = "normal"

function make_obelisk_beam(sound)
    local result = {
        type = "beam",
        name = "obelisk-beam",
        flags = {"not-on-map"},
        width = 0.5,
        damage_interval = 20,
        random_target_offset = true,
        action_triggered_automatically = false,
        action = {
            type = "direct",
            action_delivery = {
                type = "instant",
                target_effects = {
                    {
                        type = "damage",
                        damage = { amount = 20, type = "laser" }
                    }
                }
            }
        },
        graphics_set = {
            beam = {
                head = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-body.png",
                            flags = beam_non_light_flags,
                            line_length = 16,
                            width = 64,
                            height = 12,
                            frame_count = 8,
                            blend_mode = laser_beam_blend_mode,
                            hr_version = {
                                filename = "__base__/graphics/entity/laser-turret/laser-body-light.png",
                                flags = beam_non_light_flags,
                                line_length = 16,
                                width = 64,
                                height = 12,
                                frame_count = 8,
                                blend_mode = laser_beam_blend_mode,
                                tint = {1.0, 0.0, 0.0},
                                scale = 0.5
                            }
                        }
                    }
                },
                tail = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-end.png",
                            flags = beam_non_light_flags,
                            line_length = 16,
                            width = 110,
                            height = 62,
                            frame_count = 8,
                            blend_mode = laser_beam_blend_mode,
                            hr_version = {
                                filename = "__base__/graphics/entity/laser-turret/laser-end-light.png",
                                flags = beam_non_light_flags,
                                line_length = 16,
                                width = 110,
                                height = 62,
                                frame_count = 8,
                                blend_mode = laser_beam_blend_mode,
                                tint = {1.0, 0.0, 0.0},

                                scale = 0.5
                            }
                        }
                    }
                },
                body = {
                    layers = {
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-body.png",
                            flags = beam_non_light_flags,
                            line_length = 16,
                            width = 64,
                            height = 12,
                            frame_count = 8,
                            blend_mode = laser_beam_blend_mode,
                            hr_version = {
                                filename = "__base__/graphics/entity/laser-turret/laser-body-light.png",
                                flags = beam_non_light_flags,
                                line_length = 16,
                                width = 64,
                                height = 12,
                                frame_count = 8,
                                blend_mode = laser_beam_blend_mode,
                                tint = {1.0, 0.0, 0.0},

                                scale = 0.5
                            }
                        }
                    }
                }
            }
        }
    }

    if sound then
        result.working_sound = {
            sound = {
                filename = path .. "/sound/firing.ogg",
                volume = 1.0
            },
            max_sounds_per_type = 2
        }
    else
        result.working_sound = {
            sound = {
                filename = path .. "/sound/warmup.ogg",
                volume = 1.0
            },
            max_sounds_per_type = 2
        }
    end

    return result
end

data:extend{
    make_obelisk_beam(true)
}
