#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 31 May 2020
## Version   : α-0.1
#####################################

## Remove bossbar
execute as @a[team=Participant] run function mad:system/finish/bossbar_remove

## Teleport
tp @a @r[team=Participant,scores={Phase=21,Death=0}]

## Remove teams
team remove Participant

## Remove scoreboards
function mad:system/finish/reset_scoreboard

## Remove tags
tag @a remove Host
tag @a remove Numbered
tag @a remove Participant
tag @a remove Teleporter

## Reset world border
worldborder center 0 0
worldborder set 60000002

## Forceload remove
forceload remove all

## Reset players
kill @e[type=minecraft:item]
kill @e[type=minecraft:area_effect_cloud]
effect clear @a
gamemode adventure @a

## Reset gamerule
gamerule announceAdvancements true
gamerule sendCommandFeedback true
gamerule commandBlockOutput true
gamerule showDeathMessages true
gamerule doLimitedCrafting false
gamerule keepInventory false
difficulty peaceful