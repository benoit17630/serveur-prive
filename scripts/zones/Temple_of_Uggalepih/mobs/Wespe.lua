-----------------------------------
-- Area: Temple of Uggalepih
--  Mob: Wespe
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 790, 2, tpz.regime.type.GROUNDS)
end

return entity