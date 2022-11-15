-----------------------------------
-- The Secret Weapon
-- Horlais Peak mission battlefield
-- Sandoria Mission 7-2
-----------------------------------
local ID = require("scripts/zones/Horlais_Peak/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/quests")
-----------------------------------

local content = BattlefieldMission:new({
    zoneId        = xi.zone.HORLAIS_PEAK,
    battlefieldId = xi.battlefield.id.THE_SECRET_WEAPON,
    maxPlayers    = 6,
    timeLimit     = utils.minutes(30),
    index         = 3,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",

    missionArea = xi.mission.log_id.SANDORIA,
    mission     = xi.mission.id.sandoria.THE_SECRET_WEAPON,

})

content.groups =
{
    { mobs = { "Orcs_Wyvern" }, }
}

content:addEssentialMobs({ "Darokbok_of_Clan_Reaper", "Jagidbod_of_Clan_Reaper", "Derakbak_of_Clan_Wolf", "Reaper_Clan_Warmachine", "Wolf_Clan_Warmachine", })

return content:register()
