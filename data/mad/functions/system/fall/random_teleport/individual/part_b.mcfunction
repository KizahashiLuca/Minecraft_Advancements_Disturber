#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/0600 run spreadplayers ~ ~ 0 300 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0700 run spreadplayers ~ ~ 0 350 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0800 run spreadplayers ~ ~ 0 400 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0900 run spreadplayers ~ ~ 0 450 false @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/1000 run spreadplayers ~ ~ 0 500 false @a[predicate=mad:player/participant]