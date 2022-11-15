-----------------------------------
-- Carapace Combatants
-- Horlais Peak BCNM30, Sky Orb
-- !additem 1552
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/items")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId           = xi.zone.HORLAIS_PEAK,
    battlefieldId    = xi.battlefield.id.CARAPACE_COMBATANTS,
    maxPlayers       = 3,
    levelCap         = 30,
    timeLimit        = utils.minutes(15),
    index            = 8,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Pilwiz", "Bisan"})

content.loot =
{
    {
        { itemid = xi.items.BEETLE_JAW, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.BEETLE_SHELL, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.KATANA_OBI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STAFF_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SONG_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CESTUS_BELT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PICK_BELT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.CHUNK_OF_DARKSTEEL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SILVER_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHUNK_OF_MYTHRIL_ORE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SARDONYX, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_FIRE_II, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_AGI, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SCROLL_OF_ABSORB_INT, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JUG_OF_SCARLET_SAP, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.JUG_OF_SCARLET_SAP, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.HI_ETHER, droprate = xi.battlefield.dropChance.NORMAL },
    },
}

return content:register()
