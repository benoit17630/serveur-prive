-----------------------------------
-- Assault: Requiem
-- TODO: random the chest locations
-----------------------------------
local ID = require("scripts/zones/Periqia/IDs")
require("scripts/globals/instance")
-----------------------------------
local instance_object = {}

instance_object.afterInstanceRegister = function(player)
    local instance = player:getInstance()

    player:messageSpecial(ID.text.ASSAULT_32_START, 32)
    player:messageSpecial(ID.text.TIME_TO_COMPLETE, instance:getTimeLimit())
end

instance_object.onInstanceCreated = function(instance)
    for i, v in pairs(ID.mob[32]) do
        SpawnMob(v, instance)
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setPos(-489.346, -9.78, -326.579, 90)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setPos(-491.96, -9.668, -322.733, 90)
end

instance_object.onInstanceTimeUpdate = function(instance, elapsed)
    updateInstanceTime(instance, elapsed, ID.text)
end

instance_object.onInstanceFailure = function(instance)
    local chars = instance:getChars()

    for i, v in pairs(chars) do
        v:messageSpecial(ID.text.MISSION_FAILED, 10, 10)
        v:startEvent(102)
    end
end

instance_object.onInstanceProgressUpdate = function(instance, progress)
    if progress >= 18 then
        instance:complete()
    end
end

instance_object.onInstanceComplete = function(instance)
    local chars = instance:getChars()

    for i, v in pairs(chars) do
        v:messageSpecial(ID.text.RUNE_UNLOCKED_POS, 5, 9)
    end

    GetNPCByID(ID.npc.RUNE_OF_RELEASE, instance):setStatus(NORMAL)
    GetNPCByID(ID.npc.ANCIENT_LOCKBOX, instance):setStatus(NORMAL)
end

instance_object.onEventUpdate = function(player, csid, option)
end

instance_object.onEventFinish = function(player, csid, option)
end

return instance_object