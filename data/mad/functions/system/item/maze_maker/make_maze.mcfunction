#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## If dead end - store value
execute as @s[predicate=mad:system/item/maze_maker/set_dead_end] run function mad:system/item/maze_maker/set_dead_end

## Detect air
execute as @e[predicate=mad:system/item/maze_maker/path_marker] at @s run function mad:system/item/maze_maker/path_marker/kill
scoreboard players set @s RandomMax 0
function mad:system/item/maze_maker/detect_path

## If dead end
execute as @s[predicate=mad:system/item/maze_maker/dead_end] run function mad:system/item/maze_maker/dead_end
## If not dead end
execute as @s[predicate=mad:system/item/maze_maker/not_dead_end] run function mad:system/item/maze_maker/not_dead_end