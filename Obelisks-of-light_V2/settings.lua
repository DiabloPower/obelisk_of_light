data:extend({
    {
        type = "string-setting",
        name = "obelisk-use-conquer-settings",
        setting_type = "startup",
        allowed_values = {"Factorio & Conquer", "default"},
        default_value = mods["Factorio-Tiberium"] and "Factorio & Conquer" or "default",
        order = "a-a"
    },
})