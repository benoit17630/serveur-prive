-----------------------------------
-- Area: Meriphataud Mountains [S]
--   NM: Muq Shabeel
-----------------------------------
require("scripts/globals/hunts")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 525)
end

return entity
