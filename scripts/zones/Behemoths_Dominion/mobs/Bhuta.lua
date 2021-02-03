-----------------------------------
-- Area: Behemoths Dominion
--  Mob: Bhuta
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 103, 2, tpz.regime.type.FIELDS)
end

return entity
