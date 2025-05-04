if mods["Factorio-Tiberium"] and settings.startup["obelisk-use-conquer-settings"].value == "Factorio & Conquer" then
    local techs_to_remove = {
        "Obelisks-of-light",
        "Obelisk-weapons-damage-1",
        "Obelisk-weapons-damage-2",
        "Obelisk-weapons-damage-3",
        "Obelisk-weapons-damage-4",
        "Obelisk-weapons-damage-5",
        "Obelisk-weapons-damage-6",
        "Obelisk-weapons-damage-7",
        "Obelisk-Shooting-Speed-1",
        "Obelisk-Shooting-Speed-2",
        "Obelisk-Shooting-Speed-3",
        "Obelisk-Shooting-Speed-4",
        "Obelisk-Shooting-Speed-5",
        "Obelisk-Shooting-Speed-6",
        "Obelisk-Shooting-Speed-7"
    }

    for _, tech_name in ipairs(techs_to_remove) do
        if data.raw.technology[tech_name] then
            data.raw.technology[tech_name] = nil
        end
    end
end