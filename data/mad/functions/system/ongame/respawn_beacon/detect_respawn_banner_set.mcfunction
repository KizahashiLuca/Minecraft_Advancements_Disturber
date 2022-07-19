#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add DetectRespawnPlayer

## Detect respawn banner set
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] store result score @s ResultTmp run data modify entity @s CustomName set from entity @p[tag=DetectRespawnPlayer] Inventory[0].tag.display.Name

## Add a tag
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSetTmp
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={NumberOfBeacons=1,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet1
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={NumberOfBeacons=2,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet2
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={NumberOfBeacons=3,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet3
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={NumberOfBeacons=4,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet4
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={NumberOfBeacons=5,ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add RespawnBannerSet5

## Remove a tag
tag @s remove DetectRespawnPlayer

## Modify data from banner to cloud
data modify entity @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,limit=1] CustomName set from block ~ ~1 ~ CustomName