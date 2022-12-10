#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set angle
execute if predicate mad:system/item/maze_maker/detect_path/5m/west run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/west,scores={MazePosX=0..}] RandomAngle 1
execute if predicate mad:system/item/maze_maker/detect_path/5m/north run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/north,scores={MazePosZ=0..}] RandomAngle 2
execute if predicate mad:system/item/maze_maker/maze_size/5x5 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..3}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/7x7 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..5}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/9x9 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..7}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/11x11 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..9}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/13x13 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..11}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/15x15 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..13}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/17x17 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..15}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/19x19 if predicate mad:system/item/maze_maker/detect_path/5m/east run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/east,scores={MazePosX=..17}] RandomAngle 3
execute if predicate mad:system/item/maze_maker/maze_size/5x5 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..3}] RandomAngle 4
execute if predicate mad:system/item/maze_maker/maze_size/7x7 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..5}] RandomAngle 4
execute if predicate mad:system/item/maze_maker/maze_size/9x9 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..7}] RandomAngle 4
execute if predicate mad:system/item/maze_maker/maze_size/11x11 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..9}] RandomAngle 4
execute if predicate mad:system/item/maze_maker/maze_size/13x13 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..11}] RandomAngle 4
execute if predicate mad:system/item/maze_maker/maze_size/15x15 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..13}] RandomAngle 4
execute if predicate mad:system/item/maze_maker/maze_size/17x17 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..15}] RandomAngle 4
execute if predicate mad:system/item/maze_maker/maze_size/19x19 if predicate mad:system/item/maze_maker/detect_path/5m/south run scoreboard players set @s[predicate=mad:system/item/maze_maker/answer/south,scores={MazePosZ=..17}] RandomAngle 4