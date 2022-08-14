#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Compare respawn banner name to player's item's name
execute store result score #mad CompareNames run data modify entity @e[predicate=mad:system/common/respawn_beacon/detect_respawn_banner,limit=1] CustomName set from entity @s Inventory[0].tag.display.Name

## Add tags
execute if predicate mad:system/common/respawn_beacon/name_is_same run function mad:system/common/respawn_beacon/add_tags

## Modify data from banner to cloud
data modify entity @e[predicate=mad:system/common/respawn_beacon/detect_respawn_banner,limit=1] CustomName set from block ~ ~ ~ CustomName