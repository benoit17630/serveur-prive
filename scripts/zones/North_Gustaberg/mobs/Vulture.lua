-----------------------------------
-- Area: North Gustaberg
--  Mob: Vulture
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 18, 1, tpz.regime.type.FIELDS)
end

return entity
