-----------------------------------
-- Area: Ifrit's Cauldron
--  Mob: Old Opo-opo
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 756, 1, tpz.regime.type.GROUNDS)
end

return entity
