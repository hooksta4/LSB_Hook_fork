-----------------------------------
-- Shooting Fish
-- Horlais Peak BCNM20, Cloudy Orb
-- !additem 1551
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.SHOOTING_FISH,
    maxPlayers       = 3,
    levelCap         = 20,
    timeLimit        = utils.minutes(15),
    index            = 9,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.CLOUDY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Sniper_Pugil", "Archer_Pugil"})

content.loot =
{
     {
        { itemid = xi.items.MANNEQUIN_HEAD, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.MANNEQUIN_BODY, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.SHALL_SHELL, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.BLACK_ROCK, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.WHITE_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PLATOON_BOW, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PLATOON_MACE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PLATOON_DISC, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_GUN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MYTHRIL_BEASTCOIN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.BLUE_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.RED_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PLATOON_CESTI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_CUTTER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_SPATHA, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATOON_ZAGHNAL, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HANDFUL_OF_PUGIL_SCALES, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SHALL_SHELL, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.SCROLL_OF_BLAZE_SPIKES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_HORDE_LULLABY, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.THUNDER_SPIRIT_PACT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SCROLL_OF_WARP, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

}

return content:register()
