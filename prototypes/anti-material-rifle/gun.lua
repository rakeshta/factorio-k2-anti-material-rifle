--
--  gun.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 11 Jan 2023.
--

local graphics_path = mod_root_path .. "graphics/anti-material-rifle/"
local sounds_path = mod_root_path .. "sounds/anti-material-rifle/"

data:extend({
  {
    type = "gun",
    name = "anti-material-rifle",
    icon = graphics_path .. "anti-material-rifle-icon.png",
    icon_size = 64,
    subgroup = "gun",
    order = "c1[anti-material-rifle]",
    attack_parameters = {
      type = "projectile",
      ammo_category = "anti-material-rifle-ammo",
      cooldown = 60,
      movement_slow_down_factor = 0.75,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = { 0, 0.1 },
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1,
      },
      projectile_creation_distance = 1.125,
      min_range = rifle_min_range,
      range = sniper_range,
      sound = {
        {
          filename = sounds_path .. "anti-material-rifle.ogg",
          volume = 0.5,
        },
      },
    },
    stack_size = 10,
  },
})
