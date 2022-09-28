#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute at @e[predicate=mad:marker/world_spawn] run function mad:system/item/teleport_arrow/teleport/branch

## Effect
effect give @a[predicate=mad:system/item/teleport_arrow/teleporter] minecraft:glowing 5 1 false
effect give @a[predicate=mad:system/item/teleport_arrow/teleporter] minecraft:resistance 5 6 false