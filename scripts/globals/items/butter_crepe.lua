-----------------------------------
-- ID: 5766
-- Item: Butter Crepe
-- Food Effect: 30 Min, All Races
-----------------------------------
-- HP +10% (cap 10)
-- Magic Accuracy +20% (cap 25)
-- Magic Defense +1
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

item_object.onItemUse = function(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 1800, 5766)
end

item_object.onEffectGain = function(target, effect)
    target:addMod(tpz.mod.FOOD_HPP, 10)
    target:addMod(tpz.mod.FOOD_HP_CAP, 10)
    target:addMod(tpz.mod.MDEF, 1)
    target:addMod(tpz.mod.FOOD_MACCP, 20)
    target:addMod(tpz.mod.FOOD_MACC_CAP, 25)
end

item_object.onEffectLose = function(target, effect)
    target:delMod(tpz.mod.FOOD_HPP, 10)
    target:delMod(tpz.mod.FOOD_HP_CAP, 10)
    target:delMod(tpz.mod.MDEF, 1)
    target:delMod(tpz.mod.FOOD_MACCP, 20)
    target:delMod(tpz.mod.FOOD_MACC_CAP, 25)
end

return item_object
