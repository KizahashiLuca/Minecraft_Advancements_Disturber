#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
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
execute if predicate mad:gamerules/world_border/0100 run gamerule spawnRadius 100
execute if predicate mad:gamerules/world_border/0200 run gamerule spawnRadius 200
execute if predicate mad:gamerules/world_border/0300 run gamerule spawnRadius 300
execute if predicate mad:gamerules/world_border/0400 run gamerule spawnRadius 400
execute if predicate mad:gamerules/world_border/0500 run gamerule spawnRadius 500
execute if predicate mad:gamerules/world_border/0600 run gamerule spawnRadius 600
execute if predicate mad:gamerules/world_border/0700 run gamerule spawnRadius 700
execute if predicate mad:gamerules/world_border/0800 run gamerule spawnRadius 800
execute if predicate mad:gamerules/world_border/0900 run gamerule spawnRadius 900
execute if predicate mad:gamerules/world_border/1000 run gamerule spawnRadius 1000
execute if predicate mad:gamerules/world_border/1100 run gamerule spawnRadius 1100
execute if predicate mad:gamerules/world_border/1200 run gamerule spawnRadius 1200
execute if predicate mad:gamerules/world_border/1300 run gamerule spawnRadius 1300
execute if predicate mad:gamerules/world_border/1400 run gamerule spawnRadius 1400
execute if predicate mad:gamerules/world_border/1500 run gamerule spawnRadius 1500
execute if predicate mad:gamerules/world_border/1600 run gamerule spawnRadius 1600
execute if predicate mad:gamerules/world_border/1700 run gamerule spawnRadius 1700
execute if predicate mad:gamerules/world_border/1800 run gamerule spawnRadius 1800
execute if predicate mad:gamerules/world_border/1900 run gamerule spawnRadius 1900
execute if predicate mad:gamerules/world_border/2000 run gamerule spawnRadius 2000
execute if predicate mad:gamerules/world_border/unlimited run gamerule spawnRadius 2000
gamerule spectatorsGenerateChunks true
gamerule universalAnger false