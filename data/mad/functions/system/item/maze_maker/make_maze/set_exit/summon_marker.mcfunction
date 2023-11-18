#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Kill past exit marker
execute as @s[scores={HasExit=1}] run kill @e[predicate=mad:system/item/maze_maker/make_maze/set_exit/maze_exit_marker]

## Summon exit marker
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,Tags:["MAD_MazeExitMarker","MAD_NotSetMazeExitMarker"]}

## Set scoreboard
scoreboard players set @s HasExit 1
scoreboard players operation @e[predicate=mad:system/item/maze_maker/make_maze/set_exit/not_set_maze_exit_marker,distance=..0.5,limit=1] MazeNumber = @s MazeNumber
scoreboard players operation @e[predicate=mad:system/item/maze_maker/make_maze/set_exit/not_set_maze_exit_marker,distance=..0.5,limit=1] MazePosX = @s MazePosX
scoreboard players operation @e[predicate=mad:system/item/maze_maker/make_maze/set_exit/not_set_maze_exit_marker,distance=..0.5,limit=1] MazePosZ = @s MazePosZ

## Remove a tag
tag @e[predicate=mad:system/item/maze_maker/make_maze/set_exit/not_set_maze_exit_marker,distance=..0.5,limit=1] remove MAD_NotSetMazeExitMarker