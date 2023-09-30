#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set banner
setblock ~ ~1 ~ minecraft:purple_banner

## Set data
execute if entity @p[predicate=mad:player/dead/e] run data modify block ~ ~1 ~ CustomName set from entity @p[predicate=mad:player/dead/e,sort=random] Inventory[0].tag.display.Name
execute unless entity @p[predicate=mad:player/dead/e] as @e[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure,distance=..0.2] at @s run function mad:system/item/mobile_respawn_beacon/reset_respawn_beacon