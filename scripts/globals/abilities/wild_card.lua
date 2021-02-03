-----------------------------------
-- Ability: Wild Card
-- Has a random effect on all party members within area of effect.
-- Obtained: Corsair Level 1
-- Recast Time: 1:00:00
-- Duration: Instant
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/ability")
require("scripts/globals/status")
-----------------------------------
local ability_object = {}

ability_object.onAbilityCheck = function(player, target, ability)
    return 0, 0
end

ability_object.onUseAbility = function(caster, target, ability, action)
    if (caster:getID() == target:getID()) then
        local roll = math.random(1, 6)
        caster:setLocalVar("corsairRollTotal", roll)
        action:speceffect(caster:getID(), roll)
    end
    local total = caster:getLocalVar("corsairRollTotal")
    return applyRoll(caster, target, ability, action, total)
end

function applyRoll(caster, target, ability, action, total)
    caster:doWildCard(target, total)
    ability:setMsg(435 + math.floor((total-1)/2)*2)
    action:setAnimation(target:getID(), 132 + (total) - 1)
    return total
end

return ability_object
