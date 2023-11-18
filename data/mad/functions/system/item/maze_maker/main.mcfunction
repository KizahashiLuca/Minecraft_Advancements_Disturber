#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players set @s UseMazeMaker 0

## Add a tag
tag @a[predicate=mad:player/alive] add MAD_DetectMazeMaker
execute if predicate mad:gamerules/match_mode/individual run tag @s remove MAD_DetectMazeMaker
execute if predicate mad:gamerules/match_mode/team run function mad:system/item/maze_maker/set_player/add_tag_team
tag @p[predicate=mad:system/item/maze_maker/set_player/detect_maze_maker,sort=nearest] add MAD_MazePlayer

## Randomize
scoreboard players set @p[predicate=mad:system/item/maze_maker/set_player/maze_player] RandomAnswer 0
scoreboard players set #mad RandomMax 4
scoreboard players operation #mad RandomSeed *= #mad RandomMultiplier
scoreboard players operation #mad RandomSeed %= #mad RandomModder
scoreboard players operation @p[predicate=mad:system/item/maze_maker/set_player/maze_player] RandomAnswer = #mad RandomSeed
scoreboard players operation @p[predicate=mad:system/item/maze_maker/set_player/maze_player] RandomAnswer %= #mad RandomMax
scoreboard players add @p[predicate=mad:system/item/maze_maker/set_player/maze_player] RandomAnswer 1

## Set wall block
execute as @p[predicate=mad:system/item/maze_maker/fill_block/glass] at @s run function mad:system/item/maze_maker/fill_block/glass
execute as @p[predicate=mad:system/item/maze_maker/fill_block/mangrove_roots] at @s run function mad:system/item/maze_maker/fill_block/mangrove_roots
execute as @p[predicate=mad:system/item/maze_maker/fill_block/soul_sand] at @s run function mad:system/item/maze_maker/fill_block/soul_sand
execute as @p[predicate=mad:system/item/maze_maker/fill_block/cobbled_deepslate_stairs] at @s run function mad:system/item/maze_maker/fill_block/cobbled_deepslate_stairs

## Initialize digger
execute as @p[predicate=mad:system/item/maze_maker/set_player/maze_player] at @s align xyz positioned ~0.5 ~ ~0.5 run function mad:system/item/maze_maker/set_player/summon_marker
execute as @e[predicate=mad:system/item/maze_maker/set_player/not_set_maze_marker,sort=nearest,limit=1] at @s run function mad:system/item/maze_maker/set_player/initialize_digger

## Message
tellraw @s ["",{"text":"[メイズメイカー] 一番近くの敵プレイヤーを迷路に送り込みました。","color":"green"}]
tellraw @p[predicate=mad:system/item/maze_maker/set_player/maze_player] ["",{"text":"[メイズメイカー] 誰かにより迷路に送り込まれました。","color":"green"}]

## Remove tags
tag @a remove MAD_MazePlayer
tag @a remove MAD_DetectMazeMaker

## Kill vindicator
kill @e[predicate=mad:system/item/maze_maker/monster_egg,sort=nearest,limit=1]