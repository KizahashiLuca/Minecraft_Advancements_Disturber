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
execute in minecraft:overworld at @e[predicate=mad:marker/world_spawn] run function mad:system/item/teleport_arrow/teleport/branch

## Particle
particle minecraft:sonic_boom ~ ~1 ~ 0.1 -3 0.1 1 10 normal @a

## Effect
effect give @s minecraft:resistance 5 6 false