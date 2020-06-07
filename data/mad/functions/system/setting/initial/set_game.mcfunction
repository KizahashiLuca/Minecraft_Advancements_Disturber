#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Set gamerule
gamemode adventure @a[gamemode=!spectator]
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule doLimitedCrafting false
gamerule doDaylightCycle true
gamerule doWeatherCycle true
gamerule doMobSpawning true
gamerule keepInventory false
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

## Add scoreboards
function mad:system/setting/initial/add_scoreboard

## Count players
execute as @a[team=Participant] run scoreboard players add #mad NumParticipant 1

## Send messages
execute if score #mad NumParticipant matches 1.. run function mad:system/setting/initial/send_message
execute if score #mad NumParticipant matches ..0 run function mad:system/finish/game_short