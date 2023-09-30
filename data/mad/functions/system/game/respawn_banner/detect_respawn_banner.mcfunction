#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect respawn structure
fill ~ ~ ~ ~ ~1 ~ minecraft:air destroy
kill @e[predicate=mad:item/respawn_banner/chest,sort=nearest,limit=1]
kill @e[predicate=mad:area_effect_cloud/respawn_banner/structure,sort=nearest,limit=1]

## Kill armor stand
kill @s