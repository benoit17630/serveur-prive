-----------------------------------
-- Ability: Celerity
-- Reduces the casting time and the recast time of your next white magic spell by 50%.
-- Obtained: Scholar Level 25
-- Recast Time: Stratagem Charge
-- Duration: 1 white magic spell or 60 seconds, whichever occurs first.
--
-- Level   |Charges |Recharge Time per Charge
-- -----   -------- ---------------
-- 10      |1       |4:00 minutes
-- 30      |2       |2:00 minutes
-- 50      |3       |1:20 minutes
-- 70      |4       |1:00 minute
-- 90      |5       |48 seconds
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    if player:hasStatusEffect(tpz.effect.CELERITY) then
        return tpz.msg.basic.EFFECT_ALREADY_ACTIVE, 0
    end
    return 0, 0
end

ability_object.onUseAbility = function(player, target, ability)
    player:addStatusEffect(tpz.effect.CELERITY, 1, 0, 60)

    return tpz.effect.CELERITY
end

return ability_object