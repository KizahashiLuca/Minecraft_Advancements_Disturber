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
tag @s add MAD_DetectRespawnPlayer

## Compare respawn banner name to player's item's name
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure] store result score @s CompareNameResult run data modify entity @s CustomName set from entity @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] Inventory[0].tag.display.Name

## Add a tag
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure_same_player_name] run tag @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] add MAD_RespawnBannerSet
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure_same_player_name] run tag @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] add MAD_RespawnBannerSetTmp
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure_same_player_name,scores={BeaconNumber=1}] run tag @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] add MAD_RespawnBannerSet1
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure_same_player_name,scores={BeaconNumber=2}] run tag @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] add MAD_RespawnBannerSet2
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure_same_player_name,scores={BeaconNumber=3}] run tag @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] add MAD_RespawnBannerSet3
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure_same_player_name,scores={BeaconNumber=4}] run tag @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] add MAD_RespawnBannerSet4
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure_same_player_name,scores={BeaconNumber=5}] run tag @p[predicate=mad:system/common/respawn_beacon/detect_respawn_banner] add MAD_RespawnBannerSet5

## Remove a tag
tag @s remove MAD_DetectRespawnPlayer

## Modify data from banner to cloud
data modify entity @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure,limit=1] CustomName set from block ~ ~ ~ CustomName