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
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add MobileRespawnBannerSet
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={ResultTmp=0}] run tag @p[tag=DetectRespawnPlayer] add MobileRespawnBannerSetTmp
execute as @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,scores={ResultTmp=0}] run scoreboard players operation @p[tag=DetectRespawnPlayer] MobileBeaconNum = @s MobileBeaconNum

## Remove a tag
tag @s remove DetectRespawnPlayer

## Modify data from banner to cloud
data modify entity @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon,limit=1] CustomName set from block ~ ~1 ~ CustomName