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
execute if predicate mad:gamerules/world_border/1100 run spreadplayers ~ ~ 0 550 false @s
execute if predicate mad:gamerules/world_border/1200 run spreadplayers ~ ~ 0 600 false @s
execute if predicate mad:gamerules/world_border/1300 run spreadplayers ~ ~ 0 650 false @s
execute if predicate mad:gamerules/world_border/1400 run spreadplayers ~ ~ 0 700 false @s
execute if predicate mad:gamerules/world_border/1500 run spreadplayers ~ ~ 0 750 false @s

## Forceload chunk
execute at @s run forceload add ~ ~ ~ ~