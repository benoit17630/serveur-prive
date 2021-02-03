-----------------------------------
-- Spell: Archer's Prelude
-- Enhances ranged attack for party members within area of effect.
-----------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------
local spell_object = {}

spell_object.onMagicCastingCheck = function(caster, target, spell)
    return 0
end

spell_object.onSpellCast = function(caster, target, spell)
    local sLvl = caster:getSkillLevel(tpz.skill.SINGING) -- Gets skill level of Singing
    local iLvl = caster:getWeaponSkillLevel(tpz.slot.RANGED)

    local power = 20

    if sLvl+iLvl > 130 then
        power = power + math.floor((sLvl+iLvl - 130) / 18)
    end

    if power > 60 then
        power = 60
    end

    local iBoost = caster:getMod(tpz.mod.PRELUDE_EFFECT) + caster:getMod(tpz.mod.ALL_SONGS_EFFECT)
    if (iBoost > 0) then
        power = power + iBoost*6
    end


    if caster:hasStatusEffect(tpz.effect.SOUL_VOICE) then
        power = power * 2
    elseif caster:hasStatusEffect(tpz.effect.MARCATO) then
        power = power * 1.5
    end
    caster:delStatusEffect(tpz.effect.MARCATO)

    local duration = 120
    duration = duration * ((iBoost * 0.1) + (caster:getMod(tpz.mod.SONG_DURATION_BONUS) / 100) + 1)

    if caster:hasStatusEffect(tpz.effect.TROUBADOUR) then
        duration = duration * 2
    end

    if not target:addBardSong(caster, tpz.effect.PRELUDE, power, 0, duration, caster:getID(), 0, 2) then
        spell:setMsg(tpz.msg.basic.MAGIC_NO_EFFECT)
    end

    return tpz.effect.PRELUDE
end

return spell_object
