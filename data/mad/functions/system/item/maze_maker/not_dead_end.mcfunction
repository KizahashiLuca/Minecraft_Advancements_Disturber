#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Not dead end
#### Randomize angle
scoreboard players set @s RandomMax 4
scoreboard players set @s RandomAngle 0
function mad:system/item/maze_maker/randomize

## Set path
#### Fill block
execute if predicate mad:system/item/maze_maker/aisle_width/1m run function mad:system/item/maze_maker/fill_air/1m
execute if predicate mad:system/item/maze_maker/aisle_width/3m run function mad:system/item/maze_maker/fill_air/3m
execute if predicate mad:system/item/maze_maker/aisle_width/5m run function mad:system/item/maze_maker/fill_air/5m
#### Teleport armor stand
execute if predicate mad:system/item/maze_maker/aisle_width/1m run function mad:system/item/maze_maker/teleport_path/1m
execute if predicate mad:system/item/maze_maker/aisle_width/3m run function mad:system/item/maze_maker/teleport_path/3m
execute if predicate mad:system/item/maze_maker/aisle_width/5m run function mad:system/item/maze_maker/teleport_path/5m
scoreboard players set @s RandomMax 0
execute if predicate mad:system/item/maze_maker/aisle_width/1m run function mad:system/item/maze_maker/detect_path/1m
execute if predicate mad:system/item/maze_maker/aisle_width/3m run function mad:system/item/maze_maker/detect_path/3m
execute if predicate mad:system/item/maze_maker/aisle_width/5m run function mad:system/item/maze_maker/detect_path/5m
#### Summon marker
execute as @s[predicate=mad:system/item/maze_maker/summon_marker] at @s run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,Tags:["MAD_PathMarker"]}