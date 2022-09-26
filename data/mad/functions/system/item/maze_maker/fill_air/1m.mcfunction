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
execute as @s[predicate=mad:system/item/maze_maker/angle/west] at @s run fill ~ ~ ~ ~-2 ~3 ~ minecraft:air
execute as @s[predicate=mad:system/item/maze_maker/angle/north] at @s run fill ~ ~ ~ ~ ~3 ~-2 minecraft:air
execute as @s[predicate=mad:system/item/maze_maker/angle/east] at @s run fill ~ ~ ~ ~2 ~3 ~ minecraft:air
execute as @s[predicate=mad:system/item/maze_maker/angle/south] at @s run fill ~ ~ ~ ~ ~3 ~2 minecraft:air