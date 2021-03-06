-----------------------------------
-- Area: Windurst Waters
--  NPC: Bondada
-- Involved in Quests: Hat in Hand
-- !pos -66 -3 -148 238
-----------------------------------
require("scripts/globals/quests")
require("scripts/globals/settings")
require("scripts/globals/titles")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    function testflag(set, flag)
        return (set % (2*flag) >= flag)
    end
    hatstatus = player:getQuestStatus(tpz.quest.log_id.WINDURST, tpz.quest.id.windurst.HAT_IN_HAND)
    if ((hatstatus == 1  or player:getCharVar("QuestHatInHand_var2") == 1) and player:getCharVar("QuestHatInHand_var") < 127) then
        player:startEvent(53) -- Show Off Hat (She does not buy one)
    elseif ((hatstatus == 1 or player:getCharVar("QuestHatInHand_var2") == 1)  and player:getCharVar("QuestHatInHand_var") == 127) then
        player:startEvent(61) -- Show Off Hat (She buys one)
    else
        player:startEvent(43) -- Standard Conversation
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if (csid == 61) then  -- Show Off Hat
        player:addCharVar("QuestHatInHand_var", 128)
        player:addCharVar("QuestHatInHand_count", 1)
    end
end

return entity
