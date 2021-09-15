#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Get owner name
scoreboard players set @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] TempBannerNum 1
tellraw @a ["",{"score":{"name":"@e[type=minecraft:item,tag=DetectRespawnBanner,limit=1]","objective": "TempBannerNum"}}]
loot replace entity @s inventory.0 loot minecraft:entities/player
data modify entity @e[type=minecraft:item,tag=DetectBannerOwner,limit=1] CustomName set from entity @s Inventory[0].tag.display.Name
execute store success score @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] TempBannerNum run data modify entity @e[type=minecraft:item,tag=DetectBannerOwner,limit=1] CustomName set from entity @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] Item.tag.display.Name
tellraw @a ["",{"score":{"name":"@e[type=minecraft:item,tag=DetectRespawnBanner,limit=1]","objective": "TempBannerNum"}}]
execute if score @e[type=minecraft:item,tag=DetectRespawnBanner,limit=1] TempBannerNum matches 0 run tag @s add DetectedBannerOwner