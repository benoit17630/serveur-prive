-----------------------------------
-- Area: Port Windurst
--  NPC: Goltata
--  Involved in Quests: Wonder Wands
-- Working 100%
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/keyitems")
require("scripts/globals/quests")
require("scripts/globals/titles")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
WonderWands = player:getQuestStatus(tpz.quest.log_id.WINDURST, tpz.quest.id.windurst.WONDER_WANDS)
    if (WonderWands == QUEST_ACCEPTED) then
        player:startEvent(257, 0, 0, 17091)
    elseif (WonderWands == QUEST_COMPLETED) then
        player:startEvent(269)
    else
        player:startEvent(232)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
