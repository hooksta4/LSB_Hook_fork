-----------------------------------
-- Dismemberment Brigade
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
    battlefieldId    = xi.battlefield.id.DISMEMBERMENT_BRIGADE,
    maxPlayers       = 6,
    levelCap         = 60,
    timeLimit        = utils.minutes(30),
    index            = 2,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.MOON_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Armsmaster_Dekbuk", "Longarmed_Gottditt", "Keeneyed_Aufwuf", "Invulnerable_Mazzgozz", "Undefeatable_Sappdapp", "Minds-eyed_Klugwug"})

content.loot =
{
    {
        { itemid = xi.items.KABRAKANS_AXE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SARNGA, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DRAGVANDIL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.HAMELIN_FLUTE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SPECTACLES, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ASSAULT_EARRING, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PEACE_RING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.TRANSLUCENT_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GREEN_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.YELLOW_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.PURPLE_ROCK, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.PAINITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.JADEITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MYTHRIL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.STEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.FLUORITE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.GOLD_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.ZIRCON, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CHRYSOBERYL, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.DARKSTEEL_INGOT, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MOONSTONE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VILE_ELIXIR_P1, droprate = xi.battlefield.dropChance.LOW },
    },
}

return content:register()
