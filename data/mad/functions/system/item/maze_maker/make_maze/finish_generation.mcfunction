#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set exit
execute as @e[predicate=mad:system/item/maze_maker/make_maze/set_exit/same_number_maze_exit_marker] at @s run function mad:system/item/maze_maker/make_maze/set_exit/main

## Kill a marker
kill @s