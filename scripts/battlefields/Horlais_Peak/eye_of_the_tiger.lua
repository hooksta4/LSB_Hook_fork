-----------------------------------
-- Eye of the Tiger
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
    battlefieldId    = xi.battlefield.id.EYE_OF_THE_TIGER,
    maxPlayers       = 3,
    levelCap         = 50,
    timeLimit        = utils.minutes(15),
    index            = 13,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.COMET_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Gerjis" })

content.loot =
{
    {
        quanity = 2,
        { itemid = xi.items.BLACK_TIGER_FANG, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.NUE_FANG, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.IVORY_MITTS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SUPER_RIBBON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANA_CIRCLET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RIVAL_RIBBON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SLY_GAUNTLETS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SHOCK_MASK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SPIKED_FINGER_GAUNTLETS, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.INTELLECT_TORQUE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ESOTERIC_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TEMPLARS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SNIPERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HATEFUL_COLLAR, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STORM_GORGET, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HEAVY_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BENIGN_NECKLACE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_HORN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WYVERN_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.EBONY_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.RAM_SKIN, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CORAL_FRAGMENT, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
