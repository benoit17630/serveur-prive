-----------------------------------
-- Area: The Shrine of Ru'Avitau
--  Mob: Aura Sculpture
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 749, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 754, 1, tpz.regime.type.GROUNDS)
end

return entity
