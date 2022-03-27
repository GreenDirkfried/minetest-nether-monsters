local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

nethermobs                   = {}
nethermobs.NETHERMAN_ENABLED = true
nethermobs.DRAGON_ENABLED    = true

-- Override default settings with values from the .conf file, if any are present.
nethermobs.NETHERMAN_ENABLED       = minetest.settings:get_bool("nethermobs.netherman_enabled", nethermobs.NETHERMAN_ENABLED)
nethermobs.DRAGON_ENABLED          = minetest.settings:get_bool("nethermobs.dragon_enabled", nethermobs.DRAGON_ENABLED)

minetest.log("action", "[MOD] Nethermobs loaded")
minetest.log("info", "[MOD] Nethermobs: nethermobs.NETHERMAN_ENABLED: "..tostring(nethermobs.NETHERMAN_ENABLED))
minetest.log("info", "[MOD] Nethermobs: nethermobs.DRAGON_ENABLED: "..tostring(nethermobs.DRAGON_ENABLED))

if nethermobs.NETHERMAN_ENABLED then
        -- Nether Man # 129 code lines
        dofile(modpath.."/netherman.lua")
end

if nethermobs.DRAGON_ENABLED then
        -- Nether Dragon # 657 code lines
        dofile(modpath.."/dragon.lua")
end

-- please read README.md
