#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Remove bossbar
execute as @a[team=Participant] run function mad:system/finish_individual/bossbar_remove
function mad:system/finish_team/bossbar_remove

## Teleport
tp @a @r[tag=Participant,scores={Phase=21,Death=0}]

## Reset world border
worldborder center 0 0
worldborder set 60000000

## Forceload remove
forceload remove all

## Reset respawn banner
execute as @e[type=minecraft:armor_stand,tag=RespawnBanner] at @s run function mad:system/ongame/respawn_banner/break_respawn_banner
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] at @s run function mad:system/ongame/respawn_beacon/break_respawn_beacon
execute as @e[type=minecraft:area_effect_cloud,tag=MobileRespawnBeacon] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace

## Remove scoreboards
function mad:system/finish_team/reset_scoreboard

## Remove teams
team remove Participant
team remove TeamA
team remove TeamB
team remove TeamC
team remove TeamD
team remove TeamE

## Remove tags
tag @a remove Host
tag @a remove Leader
tag @a remove Numbered
tag @a remove Participant
tag @a remove Teleporter
tag @a remove Teleported
tag @a remove TeleportToMinecart
tag @a remove GiveTimeRandomly
tag @a remove RespawnBannerSet
tag @a remove RespawnBannerSetTmp
tag @a remove RespawnBannerSet1
tag @a remove RespawnBannerSet2
tag @a remove RespawnBannerSet3
tag @a remove RespawnBannerSet4
tag @a remove RespawnBannerSet5
tag @a remove MobileRespawnBannerSet
tag @a remove MobileRespawnBannerSetTmp
tag @a remove DetectMobileBeaconTag
tag @a remove DetectRespawnPlayer
tag @a remove RespawnSoon

## Reset effect
effect clear @a

## Reset player
clear @a
experience set @a 0 levels
experience set @a 0 points

## Reset world
kill @e[type=minecraft:chest_minecart,tag=Minecart]
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition]

## Reset time
time set noon

## Reset weather
weather clear

## Reset gamerule
gamemode adventure @a
gamerule doImmediateRespawn false
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