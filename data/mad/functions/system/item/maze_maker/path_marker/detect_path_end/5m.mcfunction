#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Mark the path
execute if block ~-3 ~ ~ #mad:wall_block run scoreboard players add @s RandomMax 1
execute if block ~ ~ ~-3 #mad:wall_block run scoreboard players add @s RandomMax 1
execute if block ~3 ~ ~ #mad:wall_block run scoreboard players add @s RandomMax 1
execute if block ~ ~ ~3 #mad:wall_block run scoreboard players add @s RandomMax 1
scoreboard players set @s[predicate=mad:system/item/maze_maker/path_marker/detect_path_end] RandomMax -1