-----------------------------------
-- Attachment: Armor Plate II
-----------------------------------
require("scripts/globals/automaton")
require("scripts/globals/status")
-----------------------------------
local attachment_object = {}

attachment_object.onEquip = function(pet)
    onUpdate(pet, 0)
end

attachment_object.onUnequip = function(pet)
    updateModPerformance(pet, tpz.mod.DMGPHYS, 'armor_plate_ii_mod', 0)
end

attachment_object.onManeuverGain = function(pet, maneuvers)
    onUpdate(pet, maneuvers)
end

attachment_object.onManeuverLose = function(pet, maneuvers)
    onUpdate(pet, maneuvers - 1)
end

attachment_object.onUpdate = function(pet, maneuvers)
    if maneuvers == 0 then
        updateModPerformance(pet, tpz.mod.DMGPHYS, 'armor_plate_ii_mod', -10)
    elseif maneuvers == 1 then
        updateModPerformance(pet, tpz.mod.DMGPHYS, 'armor_plate_ii_mod', -15)
    elseif maneuvers == 2 then
        updateModPerformance(pet, tpz.mod.DMGPHYS, 'armor_plate_ii_mod', -20)
    elseif maneuvers == 3 then
        updateModPerformance(pet, tpz.mod.DMGPHYS, 'armor_plate_ii_mod', -25)
    end
end

return attachment_object
