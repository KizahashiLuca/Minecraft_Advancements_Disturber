#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon path marker
summon minecraft:marker ~ ~ ~ {Invulnerable:1b,Tags:["MAD_PathMarker"]}

## Dig spawn point
execute if predicate mad:system/item/maze_maker/aisle_width/1m run fill ~ ~ ~ ~ ~3 ~ minecraft:air
execute if predicate mad:system/item/maze_maker/aisle_width/3m run fill ~-1 ~ ~-1 ~1 ~3 ~1 minecraft:air
execute if predicate mad:system/item/maze_maker/aisle_width/5m run fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air