-----------------------------------
-- Area: Middle Delkfutt's Tower
--   NM: Ogygos
-----------------------------------
require("scripts/globals/hunts")
mixins = {require("scripts/mixins/job_special")}
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    tpz.hunts.checkHunt(mob, player, 339)
end

return entity