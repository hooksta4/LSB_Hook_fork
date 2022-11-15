-----------------------------------
-- Shattering Stars
-- Horlais Peak Maat fight
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.SHATTERING_STARS_WAR,
    maxPlayers       = 1,
    timeLimit        = utils.minutes(10),
    index            = 5,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.WARRIORS_TESTIMONY },
})

content:addEssentialMobs({ "Maat" })

return content:register()
