#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Get owner name
scoreboard players set @e[predicate=mad:system/game/respawn_banner/detect_respawn_banner,limit=1] TempBannerNum 1
loot replace entity @s inventory.0 loot minecraft:entities/player
data modify entity @e[predicate=mad:system/game/respawn_banner/detect_banner_owner_item,limit=1] CustomName set from entity @s Inventory[0].tag.display.Name
execute store success score @e[predicate=mad:system/game/respawn_banner/detect_respawn_banner,limit=1] TempBannerNum run data modify entity @e[predicate=mad:system/game/respawn_banner/detect_banner_owner_item,limit=1] CustomName set from entity @e[predicate=mad:system/game/respawn_banner/detect_respawn_banner,limit=1] Item.tag.display.Name
execute if predicate mad:system/game/respawn_banner/compare_item_name run tag @s add MAD_DetectedBannerOwner