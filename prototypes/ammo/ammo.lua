--
--  ammo.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 15 Jan 2023.
--

local graphics_path = mod_root_path .. "graphics/ammo/"

data:extend({
  {
    type = "ammo",
    name = "anti-material-rifle-magazine",
    icon = graphics_path .. "anti-material-rifle-ammo-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures = {
      {
        size = 64,
        filename = graphics_path .. "anti-material-rifle-ammo-1.png",
        scale = 0.25,
        mipmap_count = 4,
      },
    },
    ammo_type = {
      category = "anti-material-rifle-ammo",
      cooldown_modifier = 0.8,
      target_type = target_type,
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "projectile",
              projectile = "anti-material-rifle-ammo-1",
              starting_speed = 3,
              direction_deviation = 0.02,
              range_deviation = 0.02,
              max_range = sniper_range,
              source_effects = {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot",
                },
              },
            },
          },
          force = "not-same",
        },
      },
    },
    magazine_size = 7,
    subgroup = "ammo",
    order = "a[basic-clips]-a07[anti-material-rifle-magazine]",
    stack_size = 200,
  },

  {
    type = "ammo",
    name = "armor-piercing-anti-material-rifle-magazine",
    icon = graphics_path .. "anti-material-rifle-ammo-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures = {
      {
        size = 64,
        filename = graphics_path .. "anti-material-rifle-ammo-2.png",
        scale = 0.25,
        mipmap_count = 4,
      },
    },
    ammo_type = {
      category = "anti-material-rifle-ammo",
      target_type = target_type,
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "projectile",
              projectile = "anti-material-rifle-ammo-2",
              starting_speed = 3,
              direction_deviation = 0.02,
              range_deviation = 0.02,
              max_range = sniper_range,
              source_effects = {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot",
                },
              },
            },
          },
          force = "not-same",
        },
      },
    },
    magazine_size = 7,
    subgroup = "ammo",
    order = "a[basic-clips]-a08[anti-material-rifle-magazine]",
    stack_size = 200,
  },

  {
    type = "ammo",
    name = "uranium-anti-material-rifle-magazine",
    icon = graphics_path .. "anti-material-rifle-ammo-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures = {
      {
        size = 64,
        filename = graphics_path .. "anti-material-rifle-ammo-3.png",
        scale = 0.25,
        mipmap_count = 4,
      },
    },
    ammo_type = {
      category = "anti-material-rifle-ammo",
      target_type = target_type,
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "projectile",
              projectile = "anti-material-rifle-ammo-3",
              starting_speed = 3,
              direction_deviation = 0.02,
              range_deviation = 0.02,
              max_range = sniper_range,
              source_effects = {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot",
                },
              },
            },
          },
          force = "not-same",
        },
      },
    },
    magazine_size = 7,
    subgroup = "ammo",
    order = "a[basic-clips]-a09[anti-material-rifle-magazine]",
    stack_size = 200,
  },
})
