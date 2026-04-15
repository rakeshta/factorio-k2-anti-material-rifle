--
--  ammo.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 16 Jan 2023.
--

local graphics_path = mod_root_path .. "graphics/ammo/"

data:extend({
  {
    type = "ammo-category",
    name = "anti-material-rifle-ammo",
    icon = graphics_path .. "anti-material-rifle-ammo.png",
    bonus_gui_order = "t",
    subgroup = "ammo-category",
  },
})
