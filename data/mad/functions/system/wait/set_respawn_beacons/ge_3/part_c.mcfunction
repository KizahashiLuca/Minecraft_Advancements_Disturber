#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport randomly
execute if predicate mad:gamerules/world_border/1100 run spreadplayers ~ ~ 10 548 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1200 run spreadplayers ~ ~ 10 598 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1300 run spreadplayers ~ ~ 10 648 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1400 run spreadplayers ~ ~ 10 698 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]
execute if predicate mad:gamerules/world_border/1500 run spreadplayers ~ ~ 10 748 false @e[predicate=mad:marker/respawn_beacon/not_center_of_world_position]