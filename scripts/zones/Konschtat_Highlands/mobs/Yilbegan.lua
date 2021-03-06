-----------------------------------
-- Area: Konschtat Highlands
--  VNM: Yilbegan
-----------------------------------
require("scripts/globals/titles")
require("scripts/quests/tutorial")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    player:addTitle(tpz.title.YILBEGAN_HIDEFLAYER)
    tpz.tutorial.onMobDeath(player)
end

return entity
