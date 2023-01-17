--
--  data.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 11 Jan 2023.
--

mod_root_path = "__k2-anti-material-rifle__/"

rifle_min_range = 1
sniper_range = 70
target_type = "direction" -- "entity", "position" or "direction"
bullets_collision_box = { { -0.5, -1 }, { 0.5, 1 } }
delivery_radius = 0.5


require("prototypes.categories.index")
require("prototypes.explosions.index")
require("prototypes.anti-material-rifle.index")
require("prototypes.ammo.index")
require("prototypes.technologies.index")
