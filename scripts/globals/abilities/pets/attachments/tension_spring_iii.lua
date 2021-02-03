-----------------------------------
-- Attachment: Tension Spring III
-----------------------------------
require("scripts/globals/automaton")
require("scripts/globals/status")
-----------------------------------
local attachment_object = {}

attachment_object.onEquip = function(pet)
    onUpdate(pet, 0)
end

attachment_object.onUnequip = function(pet)
    updateModPerformance(pet, tpz.mod.ATTP, 'tension_iii_attp', 0)
    updateModPerformance(pet, tpz.mod.RATTP, 'tension_iii_rattp', 0)
end

attachment_object.onManeuverGain = function(pet, maneuvers)
    onUpdate(pet, maneuvers)
end

attachment_object.onManeuverLose = function(pet, maneuvers)
    onUpdate(pet, maneuvers - 1)
end

attachment_object.onUpdate = function(pet, maneuvers)
    if maneuvers == 0 then
        updateModPerformance(pet, tpz.mod.ATTP, 'tension_iii_attp', 12)
        updateModPerformance(pet, tpz.mod.RATTP, 'tension_iii_rattp', 12)
    elseif maneuvers == 1 then
        updateModPerformance(pet, tpz.mod.ATTP, 'tension_iii_attp', 15)
        updateModPerformance(pet, tpz.mod.RATTP, 'tension_iii_rattp', 15)
    elseif maneuvers == 2 then
        updateModPerformance(pet, tpz.mod.ATTP, 'tension_iii_attp', 18)
        updateModPerformance(pet, tpz.mod.RATTP, 'tension_iii_rattp', 18)
    elseif maneuvers == 3 then
        updateModPerformance(pet, tpz.mod.ATTP, 'tension_iii_attp', 21)
        updateModPerformance(pet, tpz.mod.RATTP, 'tension_iii_rattp', 21)
    end
end

return attachment_object
