#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set banner
setblock ~ ~1 ~ minecraft:red_banner

## Set data
execute if entity @p[predicate=mad:player/dead/a] run data modify block ~ ~1 ~ CustomName set from entity @p[predicate=mad:player/dead/a,sort=random] Inventory[0].tag.display.Name
execute unless entity @p[predicate=mad:player/dead/a] as @e[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure,distance=..0.2] at @s run function mad:system/item/mobile_respawn_beacon/reset_respawn_beacon