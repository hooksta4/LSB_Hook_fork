-----------------------------------
-- Area: Waughroon Shrine
-- Name: Mission 2-3
-- !pos -345 104 -260 144
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.WAUGHROON_SHRINE,
    battlefieldId = xi.battlefield.id.RANK_2_MISSION,
    maxPlayers    = 6,
    levelCap      = 25,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",

    mission               = xi.mission.id.nation.RANK2,
    requiredMissionStatus = 10,
    title                 = xi.title.DARK_DRAGON_SLAYER,
})

content:addEssentialMobs({ "Seeker", "Dark_Dragon" })

return content:register()