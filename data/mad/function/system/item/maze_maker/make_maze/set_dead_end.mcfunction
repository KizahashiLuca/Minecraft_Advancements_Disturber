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
scoreboard players operation @s MazePosX = @e[predicate=mad:system/item/maze_maker/path_marker,distance=..0.5,sort=nearest,limit=1] MazePosX
scoreboard players operation @s MazePosZ = @e[predicate=mad:system/item/maze_maker/path_marker,distance=..0.5,sort=nearest,limit=1] MazePosZ
scoreboard players set @s DeadEnd 0