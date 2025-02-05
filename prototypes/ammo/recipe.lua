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
      { type = "item", name = "coal",         amount = 3 },
      { type = "item", name = "iron-plate",   amount = 2 },
      { type = "item", name = "copper-plate", amount = 1 },
    },
    results = {{ type = "item", name = "anti-material-rifle-magazine", amount = 1 }}
  },

  {
    type = "recipe",
    name = "armor-piercing-anti-material-rifle-magazine",
    energy_required = 3,
    enabled = false,
    ingredients = {
      {type = "item", name = "anti-material-rifle-magazine", amount =1 },
      {type = "item", name = "steel-plate",                  amount =3 },
    },
    results = {{type = "item", name ="armor-piercing-anti-material-rifle-magazine",amount =1}},
  },

  {
    type = "recipe",
    name = "uranium-anti-material-rifle-magazine",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name ="anti-material-rifle-magazine",amount = 1 },
      { type = "item", name ="uranium-238",                  amount =3 },
    },
    results = {{type = "item", name ="uranium-anti-material-rifle-magazine",amount =1}}
  },
})
