-----------------------------------
-- ID: 4651
-- Scroll of Protect
-- Teaches the white magic Protect
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return target:canLearnSpell(43)
end

item_object.onItemUse = function(target)
    target:addSpell(43)
end

return item_object
