#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport origin
execute at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/game/minecart/teleport_minecart/branch
execute at @e[predicate=mad:marker/minecart/detect_where_summon_minecart,limit=1] run tp @s ~ 320 ~

## Forceload chunk
execute at @e[predicate=mad:marker/minecart/detect_where_summon_minecart,limit=1] run forceload add ~ ~ ~ ~

## Set scoreboards
scoreboard players operation @s SecondSummon = #mad SummonInterval
execute store result score @s PosX align x run data get entity @s Pos[0] 1
execute store result score @s PosY align x run data get entity @s Pos[1] 1
execute store result score @s PosZ align z run data get entity @s Pos[2] 1

## Remove a tag
tag @s remove MAD_DetectWhereSummonMinecart