#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon path marker
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,Tags:["MAD_PathMarker"]}

## Set scoreboard
scoreboard players operation @e[predicate=mad:system/item/maze_maker/path_marker,distance=..0.5,limit=1] MazePosX = @s MazePosX
scoreboard players operation @e[predicate=mad:system/item/maze_maker/path_marker,distance=..0.5,limit=1] MazePosZ = @s MazePosZ