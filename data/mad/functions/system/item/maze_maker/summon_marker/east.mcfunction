#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Fill wall
summon minecraft:marker ~16 ~ ~16 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}

## Set scoreboard
scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] DeadEnd 0
scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 8
scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 8

## Dig exit
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] at @s run fill ~2 ~ ~-1 ~ ~3 ~1 minecraft:air replace #mad:wall_block