-----------------------------------
-- Tails of Woe
-- Horlais Peak BCNM40, Star Orb
-- !additem 1131
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.TAILS_OF_WOE,
    maxPlayers       = 6,
    levelCap         = 40,
    timeLimit        = utils.minutes(30),
    index            = 1,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.STAR_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Helltail_Harry", "Cottontail"})

content.loot =
{
     {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.BLITZ_RING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.AEGIS_RING, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.TUNDRA_MANTLE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.DRUIDS_ROPE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.FIRE_SPIRIT_PACT, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_ABSORB_STR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PERIDOT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PEARL, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.AMETRINE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SCROLL_OF_PHALANX, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_ABSORB_STR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PERIDOT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PEARL, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.AMETRINE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.FIRE_SPIRIT_PACT, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_ICE_SPIKES, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SCROLL_OF_REFRESH, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLACK_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLUE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RED_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.OAK_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.ROSEWOOD_LOG, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GOLD_BEASTCOIN, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PEARL, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.TURQUOISE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GOSHENITE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLACK_PEARL, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SPHENE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.GARNET, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.AMETRINE, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

}

return content:register()
