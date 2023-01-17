--
--  recipe.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 16 Jan 2023.
--

data:extend({
  {
    type = "recipe",
    name = "anti-material-rifle-magazine",
    energy_required = 2,
    enabled = false,
    ingredients = {
      { "coal", 3 },
      { "iron-plate", 2 },
      { "copper-plate", 1 },
    },
    result = "anti-material-rifle-magazine",
  },

  {
    type = "recipe",
    name = "armor-piercing-anti-material-rifle-magazine",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { "anti-material-rifle-magazine", 1 },
      { "steel-plate", 3 },
    },
    result = "armor-piercing-anti-material-rifle-magazine",
  },

  {
    type = "recipe",
    name = "uranium-anti-material-rifle-magazine",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { "anti-material-rifle-magazine", 1 },
      { "uranium-238", 3 },
    },
    result = "uranium-anti-material-rifle-magazine",
  },
})
