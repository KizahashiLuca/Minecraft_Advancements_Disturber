#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Remove bossbar
function mad:system/finish/reset_bossbar

## Teleport
tp @a @p[predicate=mad:ongame/player/participant_alive,sort=random]

## Reset world border
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968

## Forceload remove
forceload remove all

## Reset respawn banner
execute as @e[predicate=mad:ongame/respawn_banner] at @s run function mad:system/ongame/respawn_banner/break_respawn_banner
execute as @e[type=minecraft:area_effect_cloud,tag=RespawnBeacon] at @s run function mad:system/ongame/respawn_beacon/break_respawn_beacon
execute as @e[type=minecraft:area_effect_cloud,tag=MobileRespawnBeacon] at @s run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace

## Remove scoreboards
function mad:system/finish/reset_scoreboard

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
tag @a remove NotSetTeam
tag @a remove Teleporter
tag @a remove TransmitPlayer
tag @a remove DetectTransmitter
tag @a remove EmergencyCallee
tag @a remove DetectEmergencyCall
tag @a remove DetectThief
tag @a remove SetThief
tag @a remove NotStealPlayer
tag @a remove StolenPlayer
tag @a remove ThiefTeam
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
kill @e[predicate=mad:ongame/respawn_banner]
kill @e[predicate=mad:ongame/tool_upgrader]
kill @e[predicate=mad:ongame/armor_upgrader]
kill @e[predicate=mad:ongame/respawn_beacon_position]
kill @e[predicate=mad:ongame/return_portal]
kill @e[predicate=mad:ongame/mobile_respawn_beacon_position]
kill @e[type=minecraft:armor_stand,tag=MinecartItem]
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Reset time
time set noon

## Reset weather
weather clear

## Reset gamerule
gamemode adventure @a
gamerule doImmediateRespawn false
execute in minecraft:overworld run gamerule spectatorsGenerateChunks false
execute in minecraft:the_nether run gamerule spectatorsGenerateChunks false
execute in minecraft:the_end run gamerule spectatorsGenerateChunks false
execute in minecraft:overworld run gamerule announceAdvancements true
execute in minecraft:the_nether run gamerule announceAdvancements true
execute in minecraft:the_end run gamerule announceAdvancements true
gamerule sendCommandFeedback true
gamerule commandBlockOutput true
gamerule showDeathMessages true
gamerule doLimitedCrafting false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule doFireTick false
difficulty peaceful