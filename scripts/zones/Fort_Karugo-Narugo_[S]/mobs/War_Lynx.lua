-----------------------------------
-- Area: Fort Karugo-Narugo [S]
--  Mob: War Lynx
-- The Tigress Strikes Fight
-----------------------------------
local ID = require("scripts/zones/Fort_Karugo-Narugo_[S]/IDs")
require("scripts/globals/quests")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    if (mob:getID() == ID.mob.TIGRESS_STRIKES_WAR_LYNX and player:getQuestStatus(tpz.quest.log_id.CRYSTAL_WAR, tpz.quest.id.crystalWar.THE_TIGRESS_STRIKES) == QUEST_ACCEPTED) then
        player:setCharVar("WarLynxKilled", 1)
    end
end

return entity