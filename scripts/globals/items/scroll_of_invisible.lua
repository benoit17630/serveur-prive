-----------------------------------
-- ID: 4744
-- Scroll of Invisible
-- Teaches the white magic Invisible
-----------------------------------
local item_object = {}

item_object.onItemCheck = function(target)
    return target:canLearnSpell(136)
end

item_object.onItemUse = function(target)
    target:addSpell(136)
end

return item_object
