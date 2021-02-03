-----------------------------------
-- Area: Den of Rancor
--  Mob: Dire Bat
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 796, 1, tpz.regime.type.GROUNDS)
    tpz.regime.checkRegime(player, mob, 797, 1, tpz.regime.type.GROUNDS)
end

return entity