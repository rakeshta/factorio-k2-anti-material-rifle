--
--  projectiles.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 16 Jan 2023.
--

local graphics_path = mod_root_path .. "graphics/ammo/"

data:extend({
  {
    type = "projectile",
    name = "anti-material-rifle-ammo-1",
    flags = { "not-on-map" },
    hidden = true,
    collision_box = bullets_collision_box,
    acceleration = -0.025,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion-hit",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = delivery_radius + 0.25,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 80, type = "physical" },
                  },
                },
              },
              force = "not-same",
            },
          },
        },
      },
    },
    animation = {
      filename = graphics_path .. "anti-material-rifle-bullet-1.png",
      frame_count = 1,
      width = 3,
      height = 100,
      priority = "high",
    },
    shadow = {
      filename = graphics_path .. "anti-material-rifle-bullet-1.png",
      frame_count = 1,
      width = 3,
      height = 100,
      priority = "high",
      draw_as_shadow = true,
    },
    --hit_at_collision_position = true,
    force_condition = "not-same",
    light = { intensity = 0.45, size = 8, color = { r = 1.0, g = 1.0, b = 0.5 } },
  },

  {
    type = "projectile",
    name = "anti-material-rifle-ammo-2",
    flags = { "not-on-map" },
    hidden = true,
    collision_box = bullets_collision_box,
    acceleration = -0.025,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion-hit-p",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = delivery_radius + 0.25,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 125, type = "physical" },
                  },
                },
              },
              force = "not-same",
            },
          },
        },
      },
      force = "not-same",
    },
    animation = {
      filename = graphics_path .. "anti-material-rifle-bullet-2.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
    },
    shadow = {
      filename = graphics_path .. "anti-material-rifle-bullet-2.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high",
      draw_as_shadow = true,
    },
    --hit_at_collision_position = true,
    force_condition = "not-same",
    light = { intensity = 0.45, size = 8, color = { r = 1.0, g = 0.8, b = 0.5 } },
  },

  {
    type = "projectile",
    name = "anti-material-rifle-ammo-3",
    flags = { "not-on-map" },
    hidden = true,
    collision_box = bullets_collision_box,
    acceleration = -0.025,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "explosion-hit-u",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = delivery_radius + 0.25,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = 125, type = "physical" },
                  },
                  {
                    type = "damage",
                    damage = { amount = 75, type = "radioactive" },
                  },
                },
              },
              force = "not-same",
            },
          },
        },
      },
      force = "not-same",
    },
    animation = {
      filename = graphics_path .. "anti-material-rifle-bullet-3.png",
      frame_count = 1,
      width = 3,
      height = 100,
      priority = "high",
    },
    shadow = {
      filename = graphics_path .. "anti-material-rifle-bullet-3.png",
      frame_count = 1,
      width = 3,
      height = 100,
      priority = "high",
      draw_as_shadow = true,
    },
    --hit_at_collision_position = true,
    force_condition = "not-same",
    light = { intensity = 0.45, size = 8, color = { r = 0.5, g = 1, b = 0.5 } },
  },
})
