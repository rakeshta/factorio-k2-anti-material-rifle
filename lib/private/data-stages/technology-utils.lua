--
--  technology-utils.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 16 Jan 2023.
--

local log_utils = require("lib.private.data-stages.log-utils")
local recipe_utils = require("lib.private.data-stages.recipe-utils")

local technology_utils = {}

function technology_utils.getTechnologyFromName(technology_name)
  if type(technology_name) == "table" then
    return technology_name
  end
  if type(technology_name) == "string" then
    return data.raw.technology[technology_name]
  end
end

function technology_utils.getEffects(technology_name)
  local technology = technology_utils.getTechnologyFromName(technology_name)
  if technology and next(technology) ~= nil then
    if technology.effects then
      return technology.effects
    end
  end
  return {}
end

function technology_utils.addUnlockRecipe(technology_name, recipe_name)
  return technology_utils.addEffect(technology_name, { type = "unlock-recipe", recipe = recipe_name })
end

function technology_utils.addEffect(technology_name, new_effect)
  local effects = technology_utils.getEffects(technology_name)
  if next(effects) ~= nil then
    -- looking if new_effect if not present
    local found = false
    for _, effect in pairs(effects) do
      if effect.type == new_effect.type then
        if effect.type == "gun-speed" then
          if effect.ammo_category == new_effect.ammo_category and effect.modifier == new_effect.modifier then
            found = true
            break
          end
        elseif effect.type == "ammo-damage" then
          if effect.ammo_category == new_effect.ammo_category and effect.modifier == new_effect.modifier then
            found = true
            break
          end
        elseif effect.type == "give-item" then
          if effect.item == new_effect.item and effect.count == new_effect.count then
            found = true
            break
          end
        elseif effect.type == "turret-attack" then
          if effect.turret_id == new_effect.turret_id and effect.modifier == new_effect.modifier then
            found = true
            break
          end
        elseif effect.type == "unlock-recipe" then
          if effect.recipe == new_effect.recipe then
            found = true
            break
          end
        elseif effect.type == "nothing" then
          if effect.effect_description == new_effect.effect_description then
            found = true
            break
          end
        else
          if effect.modifier == new_effect.modifier then
            found = true
            break
          end
        end
      end
    end
    -- add it if not present
    if not found then
      if new_effect.type == "unlock-recipe" then
        if recipe_utils.exist(new_effect.recipe) then
          table.insert(effects, new_effect)
          return true
        else
          log_utils.error(
            string.format(
              "Can't add to %s, the effect of unlock recipe %s, because recipe %s don't exist!",
              technology_name,
              new_effect.recipe,
              new_effect.recipe
            )
          )
        end
      else
        table.insert(effects, new_effect)
        return true
      end
    end
  else
    local technology = technology_utils.getTechnologyFromName(technology_name)
    if technology and next(technology) ~= nil then
      technology.effects = { new_effect }
    end
  end
  return false
end

return technology_utils
