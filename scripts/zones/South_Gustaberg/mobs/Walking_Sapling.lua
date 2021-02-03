-----------------------------------
-- Area: South Gustaberg
--  Mob: Walking Sapling
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 78, 2, tpz.regime.type.FIELDS)
end

return entity