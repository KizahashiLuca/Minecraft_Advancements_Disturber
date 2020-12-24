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
scoreboard players set @s ResultTmp 1

## Modify data from banner to cloud
data modify entity @s CustomName set from block ~ ~1 ~ CustomName

## Detect respawn banner set
execute as @a[tag=Participant,scores={Phase=22,Death=2..}] run function mad:system/ongame/respawn_beacon/detect_respawn_banner_set

## Detect team player exist
scoreboard players set @s ResultTmp 1
execute as @p[team=TeamA,tag=RespawnBannerSetTmp] unless entity @p[team=TeamA,scores={Phase=21,Death=0},distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamB,tag=RespawnBannerSetTmp] unless entity @p[team=TeamB,scores={Phase=21,Death=0},distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamC,tag=RespawnBannerSetTmp] unless entity @p[team=TeamC,scores={Phase=21,Death=0},distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamD,tag=RespawnBannerSetTmp] unless entity @p[team=TeamD,scores={Phase=21,Death=0},distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamE,tag=RespawnBannerSetTmp] unless entity @p[team=TeamE,scores={Phase=21,Death=0},distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0

## Scoreboard
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Send message
execute as @s[scores={ResultTmp=1}] run title @a[distance=..2] title [""]
execute as @s[scores={BeaconNumber=1,ResultTmp=1}] run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet1]"}]
execute as @s[scores={BeaconNumber=2,ResultTmp=1}] run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet2]"}]
execute as @s[scores={BeaconNumber=3,ResultTmp=1}] run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet3]"}]
execute as @s[scores={BeaconNumber=4,ResultTmp=1}] run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet4]"}]
execute as @s[scores={BeaconNumber=5,ResultTmp=1}] run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSet5]"}]
execute as @s[scores={ResultTmp=1}] run title @a[distance=..2] times 2 20 2

## Reset data
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove tags
tag @s remove DetectRespawnBeacon
tag @s remove RespawnBannerSetTmp

## Remove temporarily scoreboard
scoreboard objectives remove ResultTmp

## Add a tag
tag @s add SetRespawnBanner

## Break banner
execute as @s[scores={ResultTmp=0}] run function mad:system/ongame/respawn_beacon/reset_respawn_beacon
execute as @s[scores={ResultTmp=0}] run setblock ~ ~1 ~ air destroy