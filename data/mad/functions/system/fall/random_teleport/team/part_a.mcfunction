#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if predicate mad:gamerules/world_border/0100 run spreadplayers ~ ~ 0 50 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0200 run spreadplayers ~ ~ 0 100 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0300 run spreadplayers ~ ~ 0 150 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0400 run spreadplayers ~ ~ 0 200 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/0500 run spreadplayers ~ ~ 0 250 true @a[predicate=mad:player/participant]