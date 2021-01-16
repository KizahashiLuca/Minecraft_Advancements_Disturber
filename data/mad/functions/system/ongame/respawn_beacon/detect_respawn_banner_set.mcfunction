#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add a tag
tag @s add DetectRespawnPlayer

## Detect respawn banner set
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] store result score @s ResultTmp run data modify entity @s CustomName set from entity @p[tag=DetectRespawnPlayer] Inventory[0].tag.display.Name

## Add a tag
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSetTmp
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={BeaconNumber=1,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet1
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={BeaconNumber=2,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet2
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={BeaconNumber=3,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet3
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={BeaconNumber=4,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet4
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={BeaconNumber=5,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet5

## Remove a tag
tag @s remove DetectRespawnPlayer

## Modify data from banner to cloud
data modify entity @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,limit=1] CustomName set from block ~ ~1 ~ CustomName