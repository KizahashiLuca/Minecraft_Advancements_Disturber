#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect path
execute as @s[predicate=mad:system/item/maze_maker/make_maze/angle/west,scores={MazePosX=1..}] at @s run fill ~ ~ ~-1 ~-5 ~3 ~1 minecraft:air replace #mad:wall_block
execute as @s[predicate=mad:system/item/maze_maker/make_maze/angle/north,scores={MazePosZ=1..}] at @s run fill ~-1 ~ ~ ~1 ~3 ~-5 minecraft:air replace #mad:wall_block
execute as @s[predicate=mad:system/item/maze_maker/make_maze/angle/east,scores={MazePosX=..7}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute as @s[predicate=mad:system/item/maze_maker/make_maze/angle/south,scores={MazePosZ=..7}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block