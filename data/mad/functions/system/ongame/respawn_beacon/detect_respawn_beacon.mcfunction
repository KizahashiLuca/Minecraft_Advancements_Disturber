#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Add a tag
tag @s add DetectRespawnBeacon

## Set temporarily scoreboard
scoreboard objectives add ResultTmp dummy
scoreboard players set #mad ResultTmp 1

## Modify data from banner to cloud
data modify entity @s CustomName set from block ~ ~1 ~ CustomName

## Detect respawn banner set
execute as @a[tag=Participant,scores={Phase=22,Death=2}] run function mad:system/ongame/respawn_beacon/detect_respawn_banner_set

## Scoreboard
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Send message
title @a[distance=..2] title [""]
execute if score @s BeaconNumber matches 1 run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet1]"}]
execute if score @s BeaconNumber matches 2 run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet2]"}]
execute if score @s BeaconNumber matches 3 run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet3]"}]
execute if score @s BeaconNumber matches 4 run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet4]"}]
execute if score @s BeaconNumber matches 5 run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet5]"}]
title @a[distance=..2] times 2 20 2

## Reset data
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove tags
tag @s remove DetectRespawnBeacon
tag @p[tag=RespawnBannerSetTmp] remove RespawnBannerSetTmp

## Remove temporarily scoreboard
scoreboard objectives remove ResultTmp

## Add a tag
tag @s add SetRespawnBanner