#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set gamerule
gamemode adventure @a[gamemode=!spectator]
gamerule doLimitedCrafting true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule keepInventory true
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
team join Participant @a[gamemode=adventure]
team modify Participant friendlyFire true
team modify Participant collisionRule always
team modify Participant nametagVisibility never
team modify Participant seeFriendlyInvisibles false
team modify Participant deathMessageVisibility never

## Add teams
team add TeamA {"text":"TeamA"}
team modify TeamA friendlyFire true
team modify TeamA collisionRule always
team modify TeamA nametagVisibility never
team modify TeamA seeFriendlyInvisibles false
team modify TeamA deathMessageVisibility never

## Add teams
team add TeamB {"text":"TeamB"}
team modify TeamB friendlyFire true
team modify TeamB collisionRule always
team modify TeamB nametagVisibility never
team modify TeamB seeFriendlyInvisibles false
team modify TeamB deathMessageVisibility never

## Add scoreboards
function mad:system/setting/initial/add_scoreboard

## Detect version
function mad:system/setting/initial/detect_version/branch

## Count players
execute as @a[team=Participant] run scoreboard players add #mad NumParticipant 1

## Send messages
execute if score #mad NumParticipant matches 1..100 run function mad:system/setting/initial/send_message
execute if score #mad NumParticipant matches 101.. run function mad:system/finish/game_short