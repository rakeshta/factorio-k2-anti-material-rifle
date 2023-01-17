--
--  expoosions.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 17 Jan 2023.
--

data:extend({
  {
    type = "explosion",
    name = "explosion-hit-p",
    flags = { "not-on-map" },
    subgroup = "explosions",
    animations = {
      {
        filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
        priority = "extra-high",
        width = 34,
        height = 38,
        frame_count = 13,
        animation_speed = 1.5,
        shift = { 0, -0.3125 },
      },
    },
    light = { intensity = 1, size = 9, color = { r = 1.0, g = 0.8, b = 0.5 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
  },
  {
    type = "explosion",
    name = "explosion-hit-u",
    flags = { "not-on-map" },
    subgroup = "explosions",
    animations = {
      {
        filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
        priority = "extra-high",
        width = 34,
        height = 38,
        frame_count = 13,
        animation_speed = 1.5,
        shift = { 0, -0.3125 },
      },
    },
    light = { intensity = 1, size = 9, color = { r = 0.5, g = 1, b = 0.5 } },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 0.75,
  },
})
