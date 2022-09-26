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
execute as @s[predicate=mad:system/item/maze_maker/angle/west] at @s run fill ~ ~ ~-1 ~-5 ~3 ~1 minecraft:air
execute as @s[predicate=mad:system/item/maze_maker/angle/north] at @s run fill ~-1 ~ ~ ~1 ~3 ~-5 minecraft:air
execute as @s[predicate=mad:system/item/maze_maker/angle/east] at @s run fill ~ ~ ~-1 ~5 ~3 ~1 minecraft:air
execute as @s[predicate=mad:system/item/maze_maker/angle/south] at @s run fill ~-1 ~ ~ ~1 ~3 ~5 minecraft:air