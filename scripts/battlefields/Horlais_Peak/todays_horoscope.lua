-----------------------------------
-- Today's Horoscope
-- Horlais Peak KSNM , Lachesis Orb
-- !additem lachesis_orb
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.TODAYS_HOROSCOPE,
    maxPlayers       = 6,
    timeLimit        = utils.minutes(30),
    index            = 16,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.LACHESIS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Aries" })

content.loot =
{
     {
        { itemid = xi.items.GRAVEDIGGER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GONDO_SHIZUNORI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAMPAGER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RETRIBUTOR, droprate = xi.battlefield.dropChance.NORMAL },
    },

        {
           { itemid = xi.items.HIERARCH_BELT, droprate = xi.battlefield.dropChance.NORMAL },
           { itemid = xi.items.WARWOLF_BELT, droprate = xi.battlefield.dropChance.NORMAL },
           { itemid = xi.items.PALMERINS_SHIELD, droprate = xi.battlefield.dropChance.NORMAL },
           { itemid = xi.items.TRAINERS_GLOVES, droprate = xi.battlefield.dropChance.NORMAL },
       },

    {
        { itemid = xi.items.ARIES_MANTLE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.ADAMAN_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ORICHALCUM_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.RAMPAGING_HORN, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.LUMBERING_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SWORD_STRAP, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CLAYMORE_GRIP, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = xi.battlefield.dropChance.NORMAL },

    },
}

return content:register()
