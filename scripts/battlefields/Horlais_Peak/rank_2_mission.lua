-----------------------------------
-- Rank 2 Final Mission
-- Horlais Peak mission battlefield
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/missions")
require("scripts/globals/titles")
require("scripts/globals/zone")
-----------------------------------

local content = Battlefield:new({
    zoneId        = xi.zone.HORLAIS_PEAK,
    battlefieldId = xi.battlefield.id.RANK_2_MISSION,
    maxPlayers    = 6,
    levelCap      = 25,
    timeLimit     = utils.minutes(30),
    index         = 0,
    entryNpc      = "Burning_Circle",
    exitNpc       = "Burning_Circle_Exit",

    mission               = xi.mission.id.nation.RANK2,
    requiredMissionStatus = 10,
    title                 = xi.title.DREAD_DRAGON_SLAYER,
})

content:addEssentialMobs({ "Spotter", "Dread_Dragon" })

return content:register()
