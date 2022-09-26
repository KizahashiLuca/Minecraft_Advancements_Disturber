#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set angle
execute if block ~-4 ~ ~ #mad:wall_block run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/west] RandomAngle 1
execute if block ~ ~ ~-4 #mad:wall_block run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/north] RandomAngle 2
execute if block ~4 ~ ~ #mad:wall_block run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east] RandomAngle 3
execute if block ~ ~ ~4 #mad:wall_block run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south] RandomAngle 4