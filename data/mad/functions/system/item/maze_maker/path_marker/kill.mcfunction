#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect air
scoreboard players set @s RandomMax 0
execute if predicate mad:system/item/maze_maker/aisle_width/1m run function mad:system/item/maze_maker/path_marker/detect_path_full/1m
execute if predicate mad:system/item/maze_maker/aisle_width/3m run function mad:system/item/maze_maker/path_marker/detect_path_full/3m
execute if predicate mad:system/item/maze_maker/aisle_width/5m run function mad:system/item/maze_maker/path_marker/detect_path_full/5m
kill @s[predicate=mad:system/item/maze_maker/dead_end]