#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
execute as @a[predicate=mad:system/wait/login_midtime] run function mad:system/common/login_midtime

## Time system
function mad:system/wait/time/tick

## Position
function mad:system/common/set_position/main

## Set bossbar & gamerule - teams
execute if predicate mad:system/wait/set_teams run function mad:system/wait/set_teams/main

## Set bossbar - individual
execute if predicate mad:system/wait/set_individuals run function mad:system/wait/set_individuals/main

## Set world border
execute if predicate mad:system/wait/set_world_border in minecraft:overworld at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/wait/set_world_border/main

## Set respawn beacon
execute if predicate mad:system/wait/set_respawn_beacons in minecraft:overworld at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/wait/set_respawn_beacons/main

## Construct respawn beacon
execute if predicate mad:system/wait/construct_respawn_beacons in minecraft:overworld at @e[predicate=mad:marker/respawn_beacon/position,limit=1] run function mad:system/wait/construct_respawn_beacons/main

## Respawn beacon system
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/structure] at @s run function mad:system/common/respawn_beacon/main

## Change phase
execute if predicate mad:system/wait/time/eq_zero run function mad:system/fall/change_to