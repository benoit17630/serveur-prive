-----------------------------------
-- Area: Tavnazian Safehold
--  NPC: Nilerouche
-- Standard Merchant NPC
-----------------------------------
local ID = require("scripts/zones/Tavnazian_Safehold/IDs")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local stock =
    {
        17005,   108,    -- Lufaise Fly
        17383,  2640,    -- Clothespole
        688,     200,    -- Arrowwood Log
        690,    7800,    -- Elm Log
        2871,  10000,    -- Safehold Waystone
        4913, 175827,    -- Scroll of Distract II
        4915, 217000,    -- Scroll of Frazzle II
    }

    player:showText(npc, ID.text.NILEROUCHE_SHOP_DIALOG)
    tpz.shop.general(player, stock)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
