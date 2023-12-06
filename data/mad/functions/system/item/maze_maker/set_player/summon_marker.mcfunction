#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Fill wall
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,Tags:["MAD_MazeMarker","MAD_NotSetMazeMarker"]}

## Set scoreboard
scoreboard players set @e[predicate=mad:system/item/maze_maker/set_player/not_set_maze_marker,sort=nearest,limit=1] MazePosX 4
scoreboard players set @e[predicate=mad:system/item/maze_maker/set_player/not_set_maze_marker,sort=nearest,limit=1] MazePosZ 4