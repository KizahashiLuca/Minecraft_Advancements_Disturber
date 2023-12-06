#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon path marker
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,Tags:["MAD_PathMarker","MAD_NotSetPathMarker"]}

## Set scoreboard
scoreboard players operation @e[predicate=mad:system/item/maze_maker/make_maze/not_set_path_marker,distance=..0.5,limit=1] MazeNumber = @s MazeNumber
scoreboard players operation @e[predicate=mad:system/item/maze_maker/make_maze/not_set_path_marker,distance=..0.5,limit=1] MazePosX = @s MazePosX
scoreboard players operation @e[predicate=mad:system/item/maze_maker/make_maze/not_set_path_marker,distance=..0.5,limit=1] MazePosZ = @s MazePosZ

## Remove a tag
tag @e[predicate=mad:system/item/maze_maker/make_maze/not_set_path_marker,distance=..0.5,limit=1] remove MAD_NotSetPathMarker