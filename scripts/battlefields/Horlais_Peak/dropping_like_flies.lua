-----------------------------------
-- Dropping Like Flies
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
    battlefieldId    = xi.battlefield.id.DROPPING_LIKE_FLIES,
    maxPlayers       = 6,
    levelCap         = 30,
    timeLimit        = utils.minutes(30),
    index            = 10,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",
    requiredItems = { xi.items.SKY_ORB, wearMessage = ID.text.A_CRACK_HAS_FORMED, wornMessage = ID.text.ORB_CRACKED },
})

content:addEssentialMobs({ "Huntfly" , "Houndfly" })

content.loot =
{
    {
        { itemid = xi.items.INSECT_WING, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.MANNEQUIN_HEAD, droprate = xi.battlefield.dropChance.HIGH },
    },

    {
        { itemid = xi.items.NONE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.EMPEROR_HAIRPIN, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.ASHIGARU_TARGE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.BEATERS_ASPIS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.VARLETS_ASPIS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WRESTLERS_ASPIS, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.CLEAR_TOPAZ, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.LAPIS_LAZULI, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.LIGHT_OPAL, droprate = xi.battlefield.dropChance.LOW },
    },

    {
        { itemid = xi.items.MERCENARY_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.SINGERS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WIZARDS_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.WYVERN_MANTLE, droprate = xi.battlefield.dropChance.NORMAL },
    },

    {
        { itemid = xi.items.SCROLL_OF_UTSUSEMI_NI, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.SCROLL_OF_MAGIC_FINALE, droprate = xi.battlefield.dropChance.LOW },
        { itemid = xi.items.JUG_OF_QUADAV_BUG_BROTH, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.ONYX, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.LAPIS_LAZULI, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.LIGHT_OPAL, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.SCROLL_OF_DISPEL, droprate = xi.battlefield.dropChance.VERY_HIGH },
        { itemid = xi.items.SCROLL_OF_ERASE, droprate = xi.battlefield.dropChance.HIGH },
        { itemid = xi.items.ELM_LOG, droprate = xi.battlefield.dropChance.NORMAL },
        { itemid = xi.items.MANNEQUIN_BODY, droprate = xi.battlefield.dropChance.LOW },
    },
}

return content:register()
