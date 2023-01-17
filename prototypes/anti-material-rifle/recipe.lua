--
--  recipe.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 15 Jan 2023.
--

data:extend({
  {
    type = "recipe",
    name = "anti-material-rifle",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { "submachine-gun", 2 },
      { "steel-plate", 4 },
    },
    result = "anti-material-rifle",
  },
})
