-----------------------------------
-- Area: Caedarva Mire
--  ZNM: Tyger
-- !pos -766 -12 632 79
-- Spawn with Singed Buffalo: !additem 2593
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobSpawn = function(mob)
    mob:addMod(tpz.mod.SLEEPRES, 30)
    mob:addMod(tpz.mod.BINDRES, 30)
    mob:addMod(tpz.mod.GRAVITYRES, 30)
    mob:addMod(tpz.mod.ATT, 200)
end

entity.onMobDeath = function(mob, player, isKiller)
end

return entity
