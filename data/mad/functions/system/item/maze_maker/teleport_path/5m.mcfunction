#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport path
tp @s[predicate=mad:system/item/maze_maker/angle/west,scores={MazePosX=1..}] ~-6 ~ ~
tp @s[predicate=mad:system/item/maze_maker/angle/north,scores={MazePosZ=1..}] ~ ~ ~-6
execute if predicate mad:system/item/maze_maker/maze_size/5x5 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..3}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/7x7 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..5}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/9x9 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..7}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/11x11 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..9}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/13x13 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..11}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/15x15 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..13}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/17x17 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..15}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/19x19 run tp @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..17}] ~6 ~ ~
execute if predicate mad:system/item/maze_maker/maze_size/5x5 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..3}] ~ ~ ~6
execute if predicate mad:system/item/maze_maker/maze_size/7x7 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..5}] ~ ~ ~6
execute if predicate mad:system/item/maze_maker/maze_size/9x9 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..7}] ~ ~ ~6
execute if predicate mad:system/item/maze_maker/maze_size/11x11 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..9}] ~ ~ ~6
execute if predicate mad:system/item/maze_maker/maze_size/13x13 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..11}] ~ ~ ~6
execute if predicate mad:system/item/maze_maker/maze_size/15x15 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..13}] ~ ~ ~6
execute if predicate mad:system/item/maze_maker/maze_size/17x17 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..15}] ~ ~ ~6
execute if predicate mad:system/item/maze_maker/maze_size/19x19 run tp @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..17}] ~ ~ ~6