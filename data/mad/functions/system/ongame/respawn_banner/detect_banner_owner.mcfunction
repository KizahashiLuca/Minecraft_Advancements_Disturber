#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Get owner name
scoreboard players set @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] TempBannerNum 1
loot replace entity @s inventory.0 loot minecraft:entities/player
data modify entity @e[type=minecraft:item,tag=DetectBannerOwner,limit=1] CustomName set from entity @s Inventory[0].tag.display.Name
execute store success score @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] TempBannerNum run data modify entity @e[type=minecraft:item,tag=DetectBannerOwner,limit=1] CustomName set from entity @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] Item.tag.display.Name
execute if score @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] TempBannerNum matches 0 run tag @s add DetectedBannerOwner