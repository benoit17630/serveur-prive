-----------------------------------
-- Bubble Shower
-- Deals Water damage in an area of effect. Additional effect: STR Down
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/monstertpmoves")
-----------------------------------
local mobskill_object = {}

mobskill_object.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskill_object.onMobWeaponSkill = function(target, mob, skill)
    local typeEffect = tpz.effect.STR_DOWN

    MobStatusEffectMove(mob, target, typeEffect, 10, 3, 120)

    local dmgmod = MobBreathMove(mob, target, 0.15, 5, tpz.magic.ele.WATER, 200)

    local dmg = MobFinalAdjustments(dmgmod, mob, skill, target, tpz.attackType.BREATH, tpz.damageType.WATER, MOBPARAM_IGNORE_SHADOWS)
    target:takeDamage(dmg, mob, tpz.attackType.BREATH, tpz.damageType.WATER)
    return dmg
end

return mobskill_object
