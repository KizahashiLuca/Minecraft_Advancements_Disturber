#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Remove a tag
tag @s remove MAD_NotSetMazeMarker

## Summon path marker
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,Tags:["MAD_PathMarker","MAD_NotSetPathMarker"]}

## Set scoreboard
scoreboard players set @s DeadEnd 0
scoreboard players set @s HasExit 0
scoreboard players operation @s MazeNumber = #mad MazeNumber
scoreboard players operation @e[predicate=mad:system/item/maze_maker/set_player/not_set_path_marker,distance=..0.5,limit=1] MazeNumber = @s MazeNumber
scoreboard players operation @e[predicate=mad:system/item/maze_maker/set_player/not_set_path_marker,distance=..0.5,limit=1] MazePosX = @s MazePosX
scoreboard players operation @e[predicate=mad:system/item/maze_maker/set_player/not_set_path_marker,distance=..0.5,limit=1] MazePosZ = @s MazePosZ

## Dig spawn point
fill ~-1 ~ ~-1 ~1 ~3 ~1 minecraft:air replace #mad:wall_block

## Remove a tag
tag @e[predicate=mad:system/item/maze_maker/set_player/not_set_path_marker,distance=..0.5,limit=1] remove MAD_NotSetPathMarker

## Add number
scoreboard players add #mad MazeNumber 1