#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport randomly
execute if predicate mad:gamerules/world_border/1600 run spreadplayers ~ ~ 10 798 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1700 run spreadplayers ~ ~ 10 848 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1800 run spreadplayers ~ ~ 10 898 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1900 run spreadplayers ~ ~ 10 948 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/2000 run spreadplayers ~ ~ 10 998 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/unlimited run spreadplayers ~ ~ 10 998 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]