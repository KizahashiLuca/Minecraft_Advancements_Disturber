#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute in minecraft:overworld at @e[predicate=mad:marker/world_spawn] run function mad:system/item/teleport_arrow/teleport/branch

## Particle
particle minecraft:sonic_boom ~ ~1 ~ 0.1 -3 0.1 1 10 normal @a

## Effect
effect give @s minecraft:resistance 5 6 false