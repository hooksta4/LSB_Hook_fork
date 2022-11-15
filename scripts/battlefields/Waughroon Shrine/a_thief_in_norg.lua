-----------------------------------
-- A Thief in Norg!?
-- SAM AF Myochin Kabuto
-- !pos -345 104 -260 144
-----------------------------------
local ID = require("scripts/zones/Waughroon_Shrine/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = BattlefieldQuest:new({
    zoneId           = xi.zone.WAUGHROON_SHRINE,
    battlefieldId    = xi.battlefield.id.THIEF_IN_NORG,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 4,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.BANISHING_CHARM },
})

content.groups =
{
    { mobs = { "Onibi" } },
}

content:addEssentialMobs({ "Gaki", "Onki", "Rasetsu" })

return content:register()
