#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set angle
execute if predicate mad:system/item/maze_maker/detect_path/west run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/west,scores={MazePosX=0..}] RandomAngle 1
execute if predicate mad:system/item/maze_maker/detect_path/north run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/north,scores={MazePosZ=0..}] RandomAngle 2
execute if predicate mad:system/item/maze_maker/detect_path/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..7}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/detect_path/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..7}] RandomAngle 4