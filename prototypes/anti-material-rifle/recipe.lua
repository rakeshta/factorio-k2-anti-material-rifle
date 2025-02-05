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
      {type = "item", name= "submachine-gun",amount = 2 },
      {type = "item", name= "steel-plate",amount = 4 },
    },
    results = {{type = "item", name= "anti-material-rifle",amount = 1}},
  },
})
