#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/0100 run spreadplayers ~ ~ 0 50 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0200 run spreadplayers ~ ~ 0 100 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0300 run spreadplayers ~ ~ 0 150 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0400 run spreadplayers ~ ~ 0 200 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0500 run spreadplayers ~ ~ 0 250 false @a[predicate=mad:player/participant]