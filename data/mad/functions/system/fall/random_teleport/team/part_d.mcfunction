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
execute if predicate mad:gamerules/world_border/1600 run spreadplayers ~ ~ 0 800 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/1700 run spreadplayers ~ ~ 0 850 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/1800 run spreadplayers ~ ~ 0 900 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/1900 run spreadplayers ~ ~ 0 950 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/2000 run spreadplayers ~ ~ 0 1000 true @a[predicate=mad:player/participant]
execute if predicate mad:gamerules/world_border/unlimited run spreadplayers ~ ~ 0 1000 true @a[predicate=mad:player/participant]