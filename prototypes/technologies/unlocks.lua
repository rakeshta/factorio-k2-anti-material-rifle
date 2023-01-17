--
--  unlocks.lua
--  factorio-k2-anti-material-rifle
--
--  Created by Rakesh Ayyaswami on 16 Jan 2023.
--

local technology_utils = require("lib.private.data-stages.technology-utils")

technology_utils.addUnlockRecipe("military-2", "anti-material-rifle")
technology_utils.addUnlockRecipe("military-2", "anti-material-rifle-magazine")

technology_utils.addUnlockRecipe("military-3", "armor-piercing-anti-material-rifle-magazine")

technology_utils.addUnlockRecipe("uranium-ammo", "uranium-rifle-magazine")
technology_utils.addUnlockRecipe("uranium-ammo", "uranium-anti-material-rifle-magazine")
