#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s UseMazeMaker 0

## Add a tag
tag @a add MAD_DetectMazeMaker
execute if predicate mad:gamerules/match_mode/individual run tag @s remove MAD_DetectMazeMaker
execute if predicate mad:gamerules/match_mode/team run function mad:system/item/maze_maker/add_tag_team
tag @p[predicate=mad:system/item/maze_maker/detect_maze_maker,sort=nearest] add MAD_MazePlayer

## Randomize
scoreboard players set @p[predicate=mad:system/item/maze_maker/maze_player] RandomAnswer 0
scoreboard players set #mad RandomMax 5
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation @p[predicate=mad:system/item/maze_maker/maze_player] RandomAnswer = #mad RandomSeed
scoreboard players operation @p[predicate=mad:system/item/maze_maker/maze_player] RandomAnswer %= #mad RandomMax

## Set wall block
execute as @p[predicate=mad:system/item/maze_maker/fill_block/sand] at @s run function mad:system/item/maze_maker/fill_block/sand
execute as @p[predicate=mad:system/item/maze_maker/fill_block/glass] at @s run function mad:system/item/maze_maker/fill_block/glass
execute as @p[predicate=mad:system/item/maze_maker/fill_block/oak_stairs] at @s run function mad:system/item/maze_maker/fill_block/oak_stairs
execute as @p[predicate=mad:system/item/maze_maker/fill_block/stone_brick_stairs] at @s run function mad:system/item/maze_maker/fill_block/stone_brick_stairs
execute as @p[predicate=mad:system/item/maze_maker/fill_block/cobbled_deepslate_stairs] at @s run function mad:system/item/maze_maker/fill_block/cobbled_deepslate_stairs

## Initialize digger
summon minecraft:marker ~0 ~0 ~0 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] at @s run function mad:system/item/maze_maker/initialize_digger

## Remove tags
tag @a remove MAD_MazePlayer
tag @a remove MAD_DetectMazeMaker

## Kill vindicator
kill @e[predicate=mad:system/item/maze_maker/monster_egg,sort=nearest,limit=1]