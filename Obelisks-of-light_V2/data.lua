path = "__Obelisks-of-light_V2__"
require("__Obelisks-of-light_V2__.prototypes.entity.beams")
require("__Obelisks-of-light_V2__.prototypes.entity.projectiles")
require("__Obelisks-of-light_V2__.prototypes.categories.ammo-category")
require("__Obelisks-of-light_V2__.prototypes.items")
require("__Obelisks-of-light_V2__.prototypes.recipes")
require("__Obelisks-of-light_V2__.prototypes.obelisks")
require("__Obelisks-of-light_V2__.prototypes.technology")
require("__Obelisks-of-light_V2__.prototypes.sounds")
require("__Obelisks-of-light_V2__.prototypes.custom-input")

local use_conquer_settings = settings.startup["obelisk-use-conquer-settings"].value

if mods["Factorio-Tiberium"] and data.raw.technology["tiberium-military-2"] then
    local tech = data.raw.technology["tiberium-military-2"]
    
    local tech_option = settings.startup["obelisk-use-conquer-settings"].value
    if tech_option == "Factorio & Conquer" then
        table.insert(tech.effects, {type = "unlock-recipe", recipe = "obelisk-of-light"})
    end
end

if mods["Factorio-Tiberium"] and use_conquer_settings == "Factorio & Conquer" then
    if data.raw["electric-turret"]["tiberium-obelisk-of-light"] then
        local conquer_obelisk = data.raw["electric-turret"]["tiberium-obelisk-of-light"]
        
        local obelisk_variants = {
            "obelisk-of-light",
            "obelisk-ne",
            "obelisk-nw",
            "obelisk-se",
            "obelisk-sw"
        }

        for _, obelisk_name in ipairs(obelisk_variants) do
            if data.raw["electric-turret"][obelisk_name] then
                data.raw["electric-turret"][obelisk_name].energy_source = conquer_obelisk.energy_source
                data.raw["electric-turret"][obelisk_name].attack_parameters = conquer_obelisk.attack_parameters
                data.raw["electric-turret"][obelisk_name].max_health = conquer_obelisk.max_health
                data.raw["electric-turret"][obelisk_name].order = "z-f"
                data.raw["electric-turret"][obelisk_name].subgroup = "a-buildings"
            end

            if data.raw.item[obelisk_name] then
                data.raw.item[obelisk_name].order = "f"
            end

            if data.raw.recipe[obelisk_name] then
                data.raw.recipe[obelisk_name].ingredients = data.raw.recipe["tiberium-obelisk-of-light"].ingredients
                data.raw.recipe[obelisk_name].group = "tiberium"
                data.raw.recipe[obelisk_name].subgroup = "a-buildings"
            end
        end
    end
end