#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set exit
execute as @s[predicate=mad:system/item/maze_maker/make_maze/set_exit/angle/west] run fill ~-2 ~ ~-1 ~-2 ~3 ~1 minecraft:air replace #mad:wall_block
execute as @s[predicate=mad:system/item/maze_maker/make_maze/set_exit/angle/north] run fill ~-1 ~ ~-2 ~1 ~3 ~-2 minecraft:air replace #mad:wall_block
execute as @s[predicate=mad:system/item/maze_maker/make_maze/set_exit/angle/east] run fill ~2 ~ ~-1 ~2 ~3 ~1 minecraft:air replace #mad:wall_block
execute as @s[predicate=mad:system/item/maze_maker/make_maze/set_exit/angle/south] run fill ~-1 ~ ~2 ~1 ~3 ~2 minecraft:air replace #mad:wall_block

## Kill marker
kill @s