#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Not dead end
#### Randomize angle
scoreboard players set @s RandomMax 4
scoreboard players set @s RandomAngle 0
function mad:system/item/maze_maker/make_maze/randomize

## Set path
#### Fill block
function mad:system/item/maze_maker/make_maze/fill_air
#### Teleport armor stand
function mad:system/item/maze_maker/make_maze/teleport_path
#### Detect air
scoreboard players set @s RandomMax 0
function mad:system/item/maze_maker/make_maze/detect_path
#### Set position
execute if predicate mad:system/item/maze_maker/make_maze/angle/west run scoreboard players remove @s MazePosX 1
execute if predicate mad:system/item/maze_maker/make_maze/angle/north run scoreboard players remove @s MazePosZ 1
execute if predicate mad:system/item/maze_maker/make_maze/angle/east run scoreboard players add @s MazePosX 1
execute if predicate mad:system/item/maze_maker/make_maze/angle/south run scoreboard players add @s MazePosZ 1
#### Detect enable to set exit
execute as @s[predicate=mad:system/item/maze_maker/make_maze/set_exit/enable] at @s run function mad:system/item/maze_maker/make_maze/set_exit/summon_marker
#### Summon marker
execute as @s[predicate=mad:system/item/maze_maker/make_maze/summon_marker] at @s run function mad:system/item/maze_maker/make_maze/path_marker/summon