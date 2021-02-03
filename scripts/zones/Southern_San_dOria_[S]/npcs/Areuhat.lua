-----------------------------------
-- Area: Southern SandOria [S]
--  NPC: Areuhat
-- !pos 21 0 22 80
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:showText(npc, 13454) -- (Couldn't find default dialogue)  How very good to see you again!
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
