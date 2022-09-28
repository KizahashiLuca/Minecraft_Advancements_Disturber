#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect path
execute as @s[predicate=mad:system/item/maze_maker/angle/west,scores={MazePosX=1..}] at @s run fill ~ ~ ~-1 ~-5 ~3 ~1 minecraft:air replace #mad:wall_block
execute as @s[predicate=mad:system/item/maze_maker/angle/north,scores={MazePosZ=1..}] at @s run fill ~-1 ~ ~ ~1 ~3 ~-5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/5x5 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..3}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/7x7 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..5}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/9x9 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..7}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/11x11 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..9}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/13x13 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..11}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/15x15 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..13}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/17x17 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..15}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/19x19 as @s[predicate=mad:system/item/maze_maker/angle/east,scores={MazePosX=..17}] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/5x5 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..3}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/7x7 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..5}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/9x9 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..7}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/11x11 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..9}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/13x13 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..11}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/15x15 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..13}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/17x17 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..15}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block
execute if predicate mad:system/item/maze_maker/maze_size/19x19 as @s[predicate=mad:system/item/maze_maker/angle/south,scores={MazePosZ=..17}] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air replace #mad:wall_block