#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/0100 run spreadplayers ~ ~ 0 50 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0200 run spreadplayers ~ ~ 0 100 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0300 run spreadplayers ~ ~ 0 150 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0400 run spreadplayers ~ ~ 0 200 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0500 run spreadplayers ~ ~ 0 250 false @a[predicate=mad:player/participant]