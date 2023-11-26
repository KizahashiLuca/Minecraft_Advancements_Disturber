#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport randomly
execute if predicate mad:gamerules/world_border/1600 run spreadplayers ~ ~ 10 798 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1700 run spreadplayers ~ ~ 10 848 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1800 run spreadplayers ~ ~ 10 898 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1900 run spreadplayers ~ ~ 10 948 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/2000 run spreadplayers ~ ~ 10 998 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/unlimited run spreadplayers ~ ~ 10 998 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]