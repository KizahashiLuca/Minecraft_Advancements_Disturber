#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Remove bossbar
execute as @a[team=Participant] run function mad:system/finish/bossbar_remove

## Teleport
tp @a @r[team=Participant,scores={Phase=21,Death=0}]

## Reset world border
worldborder center 0 0
worldborder set 60000002

## Forceload remove
forceload remove all

## Remove scoreboards
function mad:system/finish/reset_scoreboard

## Remove teams
team remove Participant

## Remove tags
tag @a remove Host
tag @a remove Numbered
tag @a remove Participant
tag @a remove Teleporter

## Reset effect
effect clear @a

## Reset player
clear @a
experience set @a 0 levels
experience set @a 0 points

## Reset world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:chest_minecart,tag=Minecart]

## Reset time
time set noon

## Reset weather
weather clear

## Reset gamerule
gamemode adventure @a
gamerule announceAdvancements true
gamerule sendCommandFeedback true
gamerule commandBlockOutput true
gamerule showDeathMessages true
gamerule doLimitedCrafting false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule keepInventory true
difficulty peaceful