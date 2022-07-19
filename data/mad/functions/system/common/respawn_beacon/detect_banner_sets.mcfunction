#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag - dead player
tag @s add MAD_DetectRespawnPlayer

## Compare respawn banner name to player's item's name
execute store result score #mad CompareNames run data modify entity @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure,limit=1] CustomName set from entity @p[predicate=mad:system/common/respawn_beacon/detect_respawn_player] Inventory[0].tag.display.Name

## Add tags
execute if predicate mad:system/common/respawn_beacon/name_is_same as @s[predicate=mad:system/common/respawn_beacon/detect_respawn_player] run function mad:system/common/respawn_beacon/add_tags

## Remove a tag - dead player
tag @s remove MAD_DetectRespawnPlayer

## Modify data from banner to cloud
data modify entity @e[predicate=mad:area_effect_cloud/respawn_beacon/banner_set_structure,limit=1] CustomName set from block ~ ~ ~ CustomName