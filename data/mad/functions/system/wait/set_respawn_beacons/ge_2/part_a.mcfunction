#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport randomly
execute if predicate mad:gamerules/world_border/0100 run spreadplayers ~ ~ 10 48 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/0200 run spreadplayers ~ ~ 10 98 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/0300 run spreadplayers ~ ~ 10 148 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/0400 run spreadplayers ~ ~ 10 198 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/0500 run spreadplayers ~ ~ 10 248 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]