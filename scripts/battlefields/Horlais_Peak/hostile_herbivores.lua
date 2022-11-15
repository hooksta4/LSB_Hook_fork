-----------------------------------
-- Hostile Herbivores
-- Horlais Peak BCNM50, Comet Orb
-- !additem 1177
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.HOSTILE_HERBIVORES,
    maxPlayers       = 6,
    levelCap         = 50,
    timeLimit        = utils.minutes(30),
    index            = 4,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Fighting_Sheep" })

content.loot =
{
     {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.OCEAN_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUNGLE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEPPE_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DESERT_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FOREST_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.OCEAN_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUNGLE_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DESTER_STONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FOREST_STONE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.GUARDIANS_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.KAMPFER_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CONJURERS_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SHINOBI_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLAYERS_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SORCERERS_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SOLDIERS_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.TAMERS_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRACKERS_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.DRAKE_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FENCERS_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MINSTRELS_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MEDICINE_RING, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.ROGUES_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RONIN_RING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PLATINUM_RING, droprate = xi.battlefield.dropChance.VERY_LOW },
    },

    {
        quantity = 2,
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_QUAKE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.LIGHT_SPIRIT_PACT, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.SCROLL_OF_FREEZE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_REGEN_III, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.RERAISER, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.VILE_ELIXIR, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_RAISE_II, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        quantity = 2,
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MAHOGANY_LOG, droprate = xi.battlefield.dropChance.VERY_LOW },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.MANTICORE_HIDE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HANDFUL_OF_WYVERN_SCALES, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.WYVERN_SKIN, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PETRIFIED_LOG, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.RAM_SKIN, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.PLATINUM_INGOT, droprate = xi.battlefield.dropChance.HIGH },
    },
}

return content:register()
