-----------------------------------
-- Area: Castle Oztroja
--  NPC: _479 (Brass Door)
-- Involved in Mission "Saintly Invitation"
-- !pos -99 -59 84 151
-----------------------------------
local ID = require("scripts/zones/Castle_Oztroja/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/npc_util")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
    local Z = player:getZPos()

    if
        npcUtil.tradeHas(trade, 1142) and
        player:hasKeyItem(tpz.ki.BALGA_CHAMPION_CERTIFICATE) and
        Z >= 80 and Z < 86
    then
        npc:openDoor(2.5)
        player:confirmTrade()
    else
        player:messageSpecial(ID.text.ITS_LOCKED)
    end
end

entity.onTrigger = function(player, npc)
    if npc:getAnimation() == tpz.anim.CLOSE_DOOR then
        player:messageSpecial(ID.text.ITS_LOCKED)
        return 1
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity