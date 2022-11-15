-----------------------------------
-- Horns of War
-- Horlais Peak KSNM, Themis Orb
-- !additem 1553
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.HORNS_OF_WAR,
    maxPlayers       = 18,
    timeLimit        = utils.minutes(30),
    index            = 11,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.THEMIS_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Chlevnik" })

content.loot =
{
    {
        { itemid = xi.items.BEASTLY_SHANK, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.LIBATION_ABJURATION, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.KRIEGSBEIL, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SHINSOKU, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.NOKIZARU_SHURIKEN, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.GUESPIERE, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.PURGATORY_MACE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.METEOR_CESTI, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.OBLATION_ABJURATION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.UNSHO, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HARLEQUINS_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DREIZACK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GAWAINS_AXE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ZEN_POLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BAYARDS_SWORD, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.LACQUER_TREE_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_SHINING_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DIVINE_LOG, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.BEHEMOTH_HIDE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.BEHEMOTH_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEALING_STAFF, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        quantity = 2,
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEMON_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_GOLD_ORE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPOOL_OF_GOLD_THREAD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLAB_OF_GRANITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_PLATINUM_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAINBOW_CLOTH, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.HIGH },

    },

    {
        { itemid = xi.items.BEHEMOTH_TONGUE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.BEHEMOTH_HORN, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.AGILITY_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DEXTERITY_POTION, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.STRENGTH_POTION, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VITALITY_POTION, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        { itemid = xi.items.MIND_POTION, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.INTELLIGENCE_POTION, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.CHARISMA_POTION, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.ICARUS_WING, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.ANGEL_LYRE, droprate = xi.battlefield.dropChance.EXTREMELY_HIGH },
        { itemid = xi.items.EMERALD, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPINEL, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
        { itemid = xi.items.RUBY, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.DIAMOND, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.HI_ETHER_III, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_POTION_P3, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.HI_RERAISER, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.EXTREMELY_LOW },
    },

    {
        { itemid = xi.items.VIAL_OF_BLACK_BEETLE_BLOOD, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SQUARE_OF_DAMASCENE_CLOTH, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.DAMASCUS_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPOOL_OF_MALBORO_FIBER, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.PHILOSOPHERS_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PHOENIX_FEATHER, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SQUARE_OF_RAXA, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
