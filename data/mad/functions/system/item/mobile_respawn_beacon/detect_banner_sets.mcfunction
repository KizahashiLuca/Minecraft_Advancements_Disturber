#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag - dead player
tag @s add MAD_DetectRespawnPlayer

## Compare respawn banner name to player's item's name
execute as @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] store result score @s ResultTmp run data modify entity @s CustomName set from entity @p[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_player] Inventory[0].tag.display.Name

## Add tags
execute if entity @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,scores={ResultTmp=0},limit=1] run function mad:system/item/mobile_respawn_beacon/add_tags

## Remove a tag - dead player
tag @s remove MAD_DetectRespawnPlayer

## Modify data from banner to cloud
data modify entity @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] CustomName set from block ~ ~ ~ CustomName