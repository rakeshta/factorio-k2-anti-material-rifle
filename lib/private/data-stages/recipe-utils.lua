--
--  recipe-utils.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 16 Jan 2023.
--

local recipe_utils = {}


-- @ recipe_name
-- return a recipe or nil
function recipe_utils.getRecipeFromName(recipe_name)
  return data.raw.recipe[recipe_name]
end

function recipe_utils.exist(recipe_name)
  return recipe_utils.getRecipeFromName(recipe_name) ~= nil
end

return recipe_utils
