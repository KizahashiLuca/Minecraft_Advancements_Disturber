#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/0100 run spreadplayers ~ ~ 0 50 false @s
execute if predicate mad:gamerules/world_border/0200 run spreadplayers ~ ~ 0 100 false @s
execute if predicate mad:gamerules/world_border/0300 run spreadplayers ~ ~ 0 150 false @s
execute if predicate mad:gamerules/world_border/0400 run spreadplayers ~ ~ 0 200 false @s
execute if predicate mad:gamerules/world_border/0500 run spreadplayers ~ ~ 0 250 false @s

## Forceload chunk
execute at @s run forceload add ~ ~ ~ ~