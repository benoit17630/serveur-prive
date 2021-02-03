-----------------------------------
-- Area: Ordelle's Caves
--  NPC: qm7
-- Note: Spawns Necroplasm for Eco-Warrior (San d'Oria)
-- !pos -116 30 50 193
-----------------------------------
local ID = require("scripts/zones/Ordelles_Caves/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/npc_util")
require("scripts/globals/quests")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if player:getCharVar("EcoStatus") == 1 and player:hasStatusEffect(tpz.effect.LEVEL_RESTRICTION) then
        npcUtil.popFromQM(player, npc, ID.mob.NECROPLASM, {claim=true, look=true, hide = 0})
    elseif player:getCharVar("EcoStatus") == 2 and not player:hasKeyItem(tpz.ki.INDIGESTED_STALAGMITE) then
        npcUtil.giveKeyItem(player, tpz.ki.INDIGESTED_STALAGMITE)
    else
        player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end
return entity
