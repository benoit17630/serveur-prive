-----------------------------------
-- Area: Toraimarai Canal
--  NPC: ???
-- Involved In Quest: Wild Card
-- !pos -95 16 -31 169
-----------------------------------
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if player:getCharVar("rootProblem") == 2 then
        if player:getCharVar("rootProblemQ2") <= 1 then
            if player:hasStatusEffect(tpz.effect.MANAFONT) then
                player:startEvent(47)
            else
                player:startEvent(46)
            end
        else
            player:startEvent(42)
        end
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 47 then
        player:setCharVar("rootProblemQ2", 2)
    end
end

return entity
