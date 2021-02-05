-----------------------------------
-- Area: Throne Room
-- NPC:  Armoury Crate
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/bcnm")
-----------------------------------
local entity = {}

local loot =
{
    -- BCNM Kindred Spirit
    [162] =
    {
        {
            {itemid = 17647, droprate = 76}, -- aramis-rapier
            {itemid = 17788, droprate = 76}, -- sairen
            {itemid = 17574, droprate = 76}, -- archalaus's pole
            {itemid = 17726, droprate = 76}, -- forsti's axe
            {itemid = 18172, droprate = 76}, -- light boomerang
            {itemid = 17235, droprate = 76}, -- Armbrust
            {itemid = 18087, droprate = 76}, -- schwarz lance
            {itemid = 17822, droprate = 76}, -- Omokage
            {itemid = 16788, droprate = 76}, -- vassago's scythe
            {itemid = 17491, droprate = 76}, -- spartan cesti
            {itemid = 16684, droprate = 76}, -- kabrakan's axe
            {itemid = 17648, droprate = 76}, -- dragvandil
            {itemid = 17379, droprate = 76}, -- hamelin flute
            {itemid =     0, droprate = 12}, -- nothing
        },
        {
            {itemid = 17647, droprate = 76}, -- aramis-rapier
            {itemid = 17788, droprate = 76}, -- sairen
            {itemid = 17574, droprate = 76}, -- archalaus's pole
            {itemid = 17726, droprate = 76}, -- forsti's axe
            {itemid = 18172, droprate = 76}, -- light boomerang
            {itemid = 17235, droprate = 76}, -- Armbrust
            {itemid = 18087, droprate = 76}, -- schwarz lance
            {itemid = 17822, droprate = 76}, -- Omokage
            {itemid = 16788, droprate = 76}, -- vassago's scythe
            {itemid = 17491, droprate = 76}, -- spartan cesti
            {itemid = 16684, droprate = 76}, -- kabrakan's axe
            {itemid = 17648, droprate = 76}, -- dragvandil
            {itemid = 17379, droprate = 76}, -- hamelin flute
            {itemid =     0, droprate = 12}, -- nothing
        },
        {
            {itemid = 17647, droprate = 76}, -- aramis-rapier
            {itemid = 17788, droprate = 76}, -- sairen
            {itemid = 17574, droprate = 76}, -- archalaus's pole
            {itemid = 17726, droprate = 76}, -- forsti's axe
            {itemid = 18172, droprate = 76}, -- light boomerang
            {itemid = 17235, droprate = 76}, -- Armbrust
            {itemid = 18087, droprate = 76}, -- schwarz lance
            {itemid = 17822, droprate = 76}, -- Omokage
            {itemid = 16788, droprate = 76}, -- vassago's scythe
            {itemid = 17491, droprate = 76}, -- spartan cesti
            {itemid = 16684, droprate = 76}, -- kabrakan's axe
            {itemid = 17648, droprate = 76}, -- dragvandil
            {itemid = 17379, droprate = 76}, -- hamelin flute
            {itemid =     0, droprate = 12}, -- nothing
        },{
            {itemid = 17647, droprate = 76}, -- aramis-rapier
            {itemid = 17788, droprate = 76}, -- sairen
            {itemid = 17574, droprate = 76}, -- archalaus's pole
            {itemid = 17726, droprate = 76}, -- forsti's axe
            {itemid = 18172, droprate = 76}, -- light boomerang
            {itemid = 17235, droprate = 76}, -- Armbrust
            {itemid = 18087, droprate = 76}, -- schwarz lance
            {itemid = 17822, droprate = 76}, -- Omokage
            {itemid = 16788, droprate = 76}, -- vassago's scythe
            {itemid = 17491, droprate = 76}, -- spartan cesti
            {itemid = 16684, droprate = 76}, -- kabrakan's axe
            {itemid = 17648, droprate = 76}, -- dragvandil
            {itemid = 17379, droprate = 76}, -- hamelin flute
            {itemid =     0, droprate = 12}, -- nothing


        },
        {
            {itemid = 5030, droprate = 200},-- carnage elegy
            {itemid = 0, droprate = 800},-- rien
        },


    },


}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local battlefield = player:getBattlefield()
    if battlefield then
        tpz.battlefield.HandleLootRolls(battlefield, loot[battlefield:getID()], nil, npc)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
