#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players operation #mad MazeNumberTmp = @s MazeNumber

## If dead end - store value
execute as @s[predicate=mad:system/item/maze_maker/make_maze/set_dead_end] run function mad:system/item/maze_maker/make_maze/set_dead_end

## Detect air
execute as @e[predicate=mad:system/item/maze_maker/make_maze/same_number_path_marker] at @s run function mad:system/item/maze_maker/make_maze/path_marker/kill
scoreboard players set @s RandomMax 0
function mad:system/item/maze_maker/make_maze/detect_path

## If dead end
execute as @s[predicate=mad:system/item/maze_maker/make_maze/dead_end] run function mad:system/item/maze_maker/make_maze/dead_end
## If not dead end
execute as @s[predicate=mad:system/item/maze_maker/make_maze/not_dead_end] run function mad:system/item/maze_maker/make_maze/not_dead_end