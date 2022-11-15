-----------------------------------
-- Shots in the Dark
-- Horlais Peak BCNM60, Moon Orb
-- !additem 1130
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.SHOTS_IN_THE_DARK,
    maxPlayers       = 3,
    levelCap         = 60,
    timeLimit        = utils.minutes(15),
    index            = 14,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Orcish_Onager" })

content.loot =
{
     {
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.AQUAMARINE, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.DEMON_QUIVER, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.TELEPORT_RING_HOLLA, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.TELEPORT_RING_VAHZL, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.SAPIENT_CAPE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.TRAINERS_WRISTBANDS, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

}

return content:register()
