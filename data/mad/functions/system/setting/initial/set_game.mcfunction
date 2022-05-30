#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Scoreboard
function mad:system/finish/reset_game

## Set gamerule
gamemode adventure @a[gamemode=!spectator]
gamerule spectatorsGenerateChunks true
gamerule doImmediateRespawn false
gamerule doLimitedCrafting true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doFireTick false
difficulty peaceful

## Set time
time set noon

## Set weather
weather clear

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:area_effect_cloud]
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Set player
clear @a
experience set @a 0 levels
experience set @a 0 points

## Set effect
effect clear @a
effect give @a[gamemode=!spectator] minecraft:resistance 1000000 6 true

## Remove advancements
advancement revoke @a everything

## Add tags
tag @p[sort=nearest] add Host

## Add teams
team add Participant {"text":"参加者"}
team modify Participant color white
team modify Participant friendlyFire true
team modify Participant collisionRule always
team modify Participant nametagVisibility always
team modify Participant seeFriendlyInvisibles false
team modify Participant deathMessageVisibility never
team join Participant @a[gamemode=adventure]
tag @a[gamemode=adventure] add Participant 

## Add teams
team add TeamA {"text":"赤チーム"}
team modify TeamA color red
team modify TeamA friendlyFire true
team modify TeamA collisionRule always
team modify TeamA nametagVisibility always
team modify TeamA seeFriendlyInvisibles false
team modify TeamA deathMessageVisibility never

## Add teams
team add TeamB {"text":"青チーム"}
team modify TeamB color blue
team modify TeamB friendlyFire true
team modify TeamB collisionRule always
team modify TeamB nametagVisibility always
team modify TeamB seeFriendlyInvisibles false
team modify TeamB deathMessageVisibility never

## Add teams
team add TeamC {"text":"黄チーム"}
team modify TeamC color yellow
team modify TeamC friendlyFire true
team modify TeamC collisionRule always
team modify TeamC nametagVisibility always
team modify TeamC seeFriendlyInvisibles false
team modify TeamC deathMessageVisibility never

## Add teams
team add TeamD {"text":"緑チーム"}
team modify TeamD color green
team modify TeamD friendlyFire true
team modify TeamD collisionRule always
team modify TeamD nametagVisibility always
team modify TeamD seeFriendlyInvisibles false
team modify TeamD deathMessageVisibility never

## Add teams
team add TeamE {"text":"紫チーム"}
team modify TeamE color dark_purple
team modify TeamE friendlyFire true
team modify TeamE collisionRule always
team modify TeamE nametagVisibility always
team modify TeamE seeFriendlyInvisibles false
team modify TeamE deathMessageVisibility never

## Add scoreboards
function mad:system/setting/initial/add_scoreboard

## Detect version
function mad:system/setting/initial/detect_version

## Count players
execute as @a[tag=Participant] run scoreboard players add #mad NumParticipant 1

## Test
execute if entity @p[tag=MADtest] run scoreboard players set #mad NumParticipant 5

## Send messages
execute if score #mad Version matches 18 if score #mad NumParticipant matches 1..100 run function mad:system/setting/initial/send_message
execute if score #mad Version matches ..17 if score #mad NumParticipant matches 1..100 run function mad:system/finish/game_version_error
execute if score #mad Version matches 19.. if score #mad NumParticipant matches 1..100 run function mad:system/finish/game_version_error
execute if score #mad NumParticipant matches 101.. run function mad:system/finish/game_many