#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Detect respawn banner set
execute store result score #mad ResultTmp run data modify entity @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,sort=nearest,limit=1] CustomName set from entity @s Inventory[0].tag.display.Name

## Add a tag
execute if score #mad ResultTmp matches 0 run tag @s add RespawnBannerSet
execute if score #mad ResultTmp matches 0 run tag @s add RespawnBannerSetTmp
execute if score #mad ResultTmp matches 0 if score @e[type=area_effect_cloud,tag=DetectRespawnBeacon,limit=1] BeaconNumber matches 1 run tag @s add RespawnBannerSet1
execute if score #mad ResultTmp matches 0 if score @e[type=area_effect_cloud,tag=DetectRespawnBeacon,limit=1] BeaconNumber matches 2 run tag @s add RespawnBannerSet2
execute if score #mad ResultTmp matches 0 if score @e[type=area_effect_cloud,tag=DetectRespawnBeacon,limit=1] BeaconNumber matches 3 run tag @s add RespawnBannerSet3
execute if score #mad ResultTmp matches 0 if score @e[type=area_effect_cloud,tag=DetectRespawnBeacon,limit=1] BeaconNumber matches 4 run tag @s add RespawnBannerSet4
execute if score #mad ResultTmp matches 0 if score @e[type=area_effect_cloud,tag=DetectRespawnBeacon,limit=1] BeaconNumber matches 5 run tag @s add RespawnBannerSet5

## Modify data from banner to cloud
data modify entity @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,sort=nearest,limit=1] CustomName set from block ~ ~1 ~ CustomName