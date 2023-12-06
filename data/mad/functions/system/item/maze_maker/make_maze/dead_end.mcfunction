#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Dead end
#### Kill PathArmorStand
kill @e[predicate=mad:system/item/maze_maker/path_marker,distance=..0.5,limit=1]
#### Teleport PathArmorStand
tp @s @e[predicate=mad:system/item/maze_maker/make_maze/same_number_path_marker,sort=random,limit=1]
#### Set scoreboard
scoreboard players set @s DeadEnd 1

## Finish generation
execute unless entity @e[predicate=mad:system/item/maze_maker/make_maze/same_number_path_marker] run function mad:system/item/maze_maker/make_maze/finish_generation