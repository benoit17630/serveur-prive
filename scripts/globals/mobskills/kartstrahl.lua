-----------------------------------
-- Kartstrahl
--
-- Description: Single target damage with sleep.
-- Type: Physical
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
    local numhits = 1
    local accmod = 1
    local dmgmod = 2.5
    local info = MobPhysicalMove(mob, target, skill, numhits, accmod, dmgmod, TP_NO_EFFECT)
    local dmg = MobFinalAdjustments(info.dmg, mob, skill, target, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT, info.hitslanded)

    local typeEffect = tpz.effect.SLEEP_I

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 1, 0, 30)

    target:takeDamage(dmg, mob, tpz.attackType.PHYSICAL, tpz.damageType.BLUNT)
    return dmg
end

return mobskill_object
