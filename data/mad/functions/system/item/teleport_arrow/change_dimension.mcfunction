#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Particle
particle minecraft:sonic_boom ~ ~1 ~ 0.1 -3 0.1 1 10 normal @a

## Effect
effect give @s minecraft:resistance 5 6 false

## Change dimension
tp @s @e[predicate=mad:marker/world_spawn,limit=1]