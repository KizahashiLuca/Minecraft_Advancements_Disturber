#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids false
execute if predicate mad:gamerules/daylight_cycle/true run gamerule doDaylightCycle true
execute if predicate mad:gamerules/daylight_cycle/false run gamerule doDaylightCycle false
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doImmediateRespawn true
gamerule doInsomnia true
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTileDrops true
gamerule doTraderSpawning true
gamerule doWardenSpawning true
execute if predicate mad:gamerules/weather_cycle/true run gamerule doWeatherCycle true
execute if predicate mad:gamerules/weather_cycle/false run gamerule doWeatherCycle false
gamerule drowningDamage true
gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule freezeDamage true
gamerule keepInventory false
gamerule logAdminCommands true
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobGriefing true
gamerule naturalRegeneration true
gamerule playersSleepingPercentage 100
gamerule randomTickSpeed 3
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
execute if predicate mad:gamerules/match_mode/individual run gamerule showDeathMessages false
execute if predicate mad:gamerules/match_mode/team if predicate mad:gamerules/team_match/death_message_visibility/true run gamerule showDeathMessages true
execute if predicate mad:gamerules/match_mode/team if predicate mad:gamerules/team_match/death_message_visibility/false run gamerule showDeathMessages false
gamerule spawnRadius 10
gamerule spectatorsGenerateChunks true
gamerule universalAnger false