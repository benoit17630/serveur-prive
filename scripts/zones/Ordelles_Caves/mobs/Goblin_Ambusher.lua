-----------------------------------
-- Area: Ordelle's Caves
--  Mob: Goblin Ambusher
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 657, 1, tpz.regime.type.GROUNDS)
end

return entity