#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect path
execute if predicate mad:system/item/maze_maker/detect_path/3m/west run scoreboard players add @s[scores={MazePosX=1..}] RandomMax 1
execute if predicate mad:system/item/maze_maker/detect_path/3m/north run scoreboard players add @s[scores={MazePosZ=1..}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/5x5 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..3}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/7x7 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..5}] RandomMax 1
execute if predicate mad:system/item/maze_maker/maze_size/9x9 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..7}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/11x11 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..9}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/13x13 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..11}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/15x15 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..13}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/17x17 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..15}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/19x19 if predicate mad:system/item/maze_maker/detect_path/3m/east run scoreboard players add @s[scores={MazePosX=..17}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/5x5 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..3}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/7x7 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..5}] RandomMax 1
execute if predicate mad:system/item/maze_maker/maze_size/9x9 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..7}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/11x11 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..9}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/13x13 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..11}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/15x15 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..13}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/17x17 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..15}] RandomMax 1
# execute if predicate mad:system/item/maze_maker/maze_size/19x19 if predicate mad:system/item/maze_maker/detect_path/3m/south run scoreboard players add @s[scores={MazePosZ=..17}] RandomMax 1