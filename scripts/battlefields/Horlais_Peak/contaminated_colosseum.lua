-----------------------------------
-- Contaminated Colosseum
-- Horlais Peak KSNM, Atropos Orb
-- !additem 1180
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.CONTAMINATED_COLOSSEUM,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 17,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.ATROPOS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Evil_Oscar" })

content.loot =
{
    {
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MICHISHIBA_NO_TSUYU, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MORGENSTERN, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SENJUINRIKIO, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.THYRSUSSTAB, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.CASSIE_EARRING, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CLAYMORE_GRIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MALBORO_VINE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MORBOLGER_VINE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.POLE_GRIP, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPEAR_STRAP, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.ADAMAN_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ORICHALCUM_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OSCAR_STAFF, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.EVOKERS_BOOTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OSTREGER_MITTS, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PINEAL_HAT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TRACKERS_KECKS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SLAB_OF_GRANITE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PHILOMATH_STOLE, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.HIGH },
    },
}

return content:register()
