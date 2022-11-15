-----------------------------------
-- On My Way Bastok 7-2
-- Waughroon Shrine mission battlefield
-- !pos -345 104 -260 144
-----------------------------------
require("scripts/globals/battlefield")
require("scripts/globals/keyitems")
require("scripts/globals/titles")
require("scripts/globals/missions")
require("scripts/globals/zone")
-----------------------------------
local content = BattlefieldMission:new({
    zoneId                = xi.zone.WAUGHROON_SHRINE,
    battlefieldId         = xi.battlefield.id.ON_MY_WAY,
    maxPlayers            = 6,
    levelCap              = 75,
    timeLimit             = utils.minutes(30),
    index                 = 3,
    entryNpc              = "Burning_Circle",
    exitNpc               = "Burning_Circle_Exit",
    missionArea           = xi.mission.log_id.BASTOK,
    mission               = xi.mission.id.bastok.ON_MY_WAY,
    requiredMissionStatus = 2,
})

content:addEssentialMobs({ "KuJhu_Graniteskin", "SaNha_Soulsaver", "DaShu_Knightslayer", "GoBha_Slaughterer" })

return content:register()
