#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect path
execute if predicate mad:system/item/maze_maker/make_maze/detect_path/west run scoreboard players add @s[scores={MazePosX=1..}] RandomMax 1
execute if predicate mad:system/item/maze_maker/make_maze/detect_path/north run scoreboard players add @s[scores={MazePosZ=1..}] RandomMax 1
execute if predicate mad:system/item/maze_maker/make_maze/detect_path/east run scoreboard players add @s[scores={MazePosX=..7}] RandomMax 1
execute if predicate mad:system/item/maze_maker/make_maze/detect_path/south run scoreboard players add @s[scores={MazePosZ=..7}] RandomMax 1