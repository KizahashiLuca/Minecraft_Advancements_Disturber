#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Fill wall
execute if predicate mad:system/item/maze_maker/maze_size/5x5 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~4 ~ ~4 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/5x5 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~8 ~ ~8 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/5x5 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~12 ~ ~12 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/7x7 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~6 ~ ~6 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/7x7 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~12 ~ ~12 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/7x7 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~18 ~ ~18 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/9x9 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~8 ~ ~8 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/9x9 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~16 ~ ~16 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/9x9 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~24 ~ ~24 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/11x11 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~10 ~ ~10 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/11x11 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~20 ~ ~20 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/11x11 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~30 ~ ~30 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/13x13 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~12 ~ ~12 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/13x13 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~24 ~ ~24 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/13x13 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~36 ~ ~36 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/15x15 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~14 ~ ~14 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/15x15 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~28 ~ ~28 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/15x15 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~42 ~ ~42 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/17x17 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~16 ~ ~16 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/17x17 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~32 ~ ~32 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/17x17 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~48 ~ ~48 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/19x19 if predicate mad:system/item/maze_maker/aisle_width/1m run summon minecraft:marker ~18 ~ ~18 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/19x19 if predicate mad:system/item/maze_maker/aisle_width/3m run summon minecraft:marker ~36 ~ ~36 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}
execute if predicate mad:system/item/maze_maker/maze_size/19x19 if predicate mad:system/item/maze_maker/aisle_width/5m run summon minecraft:marker ~54 ~ ~54 {Invulnerable:1b,Tags:["MAD_MazeMarker"]}

## Set scoreboard
scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] DeadEnd 0
execute if predicate mad:system/item/maze_maker/maze_size/5x5 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 4
execute if predicate mad:system/item/maze_maker/maze_size/7x7 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 6
execute if predicate mad:system/item/maze_maker/maze_size/9x9 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 8
execute if predicate mad:system/item/maze_maker/maze_size/11x11 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 10
execute if predicate mad:system/item/maze_maker/maze_size/13x13 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 12
execute if predicate mad:system/item/maze_maker/maze_size/15x15 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 14
execute if predicate mad:system/item/maze_maker/maze_size/17x17 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 16
execute if predicate mad:system/item/maze_maker/maze_size/19x19 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosX 18
execute if predicate mad:system/item/maze_maker/maze_size/5x5 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 4
execute if predicate mad:system/item/maze_maker/maze_size/7x7 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 6
execute if predicate mad:system/item/maze_maker/maze_size/9x9 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 8
execute if predicate mad:system/item/maze_maker/maze_size/11x11 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 10
execute if predicate mad:system/item/maze_maker/maze_size/13x13 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 12
execute if predicate mad:system/item/maze_maker/maze_size/15x15 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 14
execute if predicate mad:system/item/maze_maker/maze_size/17x17 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 16
execute if predicate mad:system/item/maze_maker/maze_size/19x19 run scoreboard players set @e[predicate=mad:system/item/maze_maker/maze_marker,sort=nearest,limit=1] MazePosZ 18

## Dig exit
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] if predicate mad:system/item/maze_maker/aisle_width/1m at @s run fill ~1 ~ ~ ~ ~3 ~ minecraft:air replace #mad:wall_block
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] if predicate mad:system/item/maze_maker/aisle_width/3m at @s run fill ~2 ~ ~-1 ~ ~3 ~1 minecraft:air replace #mad:wall_block
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] if predicate mad:system/item/maze_maker/aisle_width/5m at @s run fill ~3 ~ ~-2 ~ ~3 ~2 minecraft:air replace #mad:wall_block