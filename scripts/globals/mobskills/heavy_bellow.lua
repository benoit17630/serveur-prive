-----------------------------------
-- Heavy Bellow
--
-- Description: Additional effect: "Stun."
-- Type: Physical (Blunt)
--
--
-----------------------------------
require("scripts/globals/monstertpmoves")
require("scripts/globals/settings")
require("scripts/globals/status")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local typeEffect = tpz.effect.STUN

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 1, 0, 6))

    return typeEffect
end

return mobskill_object