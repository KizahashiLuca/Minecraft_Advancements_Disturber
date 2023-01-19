#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set banner
setblock ~ ~1 ~ minecraft:yellow_banner

## Set data
execute if entity @p[predicate=mad:player/dead/c] run data modify block ~ ~1 ~ CustomName set from entity @p[predicate=mad:player/dead/c,sort=random] Inventory[0].tag.display.Name
execute unless entity @p[predicate=mad:player/dead/c] as @e[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure,distance=..0.2] at @s run function mad:system/item/mobile_respawn_beacon/reset_respawn_beacon