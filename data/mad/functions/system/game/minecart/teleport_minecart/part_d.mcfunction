#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/1600 run spreadplayers ~ ~ 0 800 false @s
execute if predicate mad:gamerules/world_border/1700 run spreadplayers ~ ~ 0 850 false @s
execute if predicate mad:gamerules/world_border/1800 run spreadplayers ~ ~ 0 900 false @s
execute if predicate mad:gamerules/world_border/1900 run spreadplayers ~ ~ 0 950 false @s
execute if predicate mad:gamerules/world_border/2000 run spreadplayers ~ ~ 0 1000 false @s
execute if predicate mad:gamerules/world_border/unlimited run spreadplayers ~ ~ 0 1000 false @s

## Forceload chunk
execute at @s run forceload add ~ ~ ~ ~