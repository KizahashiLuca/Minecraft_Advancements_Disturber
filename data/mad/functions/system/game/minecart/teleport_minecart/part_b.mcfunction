#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/0600 run spreadplayers ~ ~ 0 300 false @s
execute if predicate mad:gamerules/world_border/0700 run spreadplayers ~ ~ 0 350 false @s
execute if predicate mad:gamerules/world_border/0800 run spreadplayers ~ ~ 0 400 false @s
execute if predicate mad:gamerules/world_border/0900 run spreadplayers ~ ~ 0 450 false @s
execute if predicate mad:gamerules/world_border/1000 run spreadplayers ~ ~ 0 500 false @s

## Forceload chunk
execute at @s run forceload add ~ ~ ~ ~