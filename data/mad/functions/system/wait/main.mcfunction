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
execute as @a[predicate=mad:system/begin/team_member/login_midtime] run function mad:system/begin/team_member/login_midtime

## Time system
function mad:system/wait/time/tick

## Position
function mad:system/common/set_position/main

## Set bossbar & gamerule - teams
execute if predicate mad:system/wait/set_teams run function mad:system/wait/set_teams/main

## Set bossbar - individual
execute if predicate mad:system/wait/set_individuals run function mad:system/wait/set_individuals/main

## Set world border
execute if score #mad Second matches 23 if score #mad Tick matches 0 if score #mad WorldBorder matches 0..1000 at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/pre_preparation/world_border/set_world_border_0_1000
execute if score #mad Second matches 22 if score #mad Tick matches 0 if score #mad WorldBorder matches 1100..2000 at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/pre_preparation/world_border/set_world_border_1100_2000

## Set respawn beacon
execute if score #mad Second matches 21 if score #mad Tick matches 0 if score #mad IsTeam matches 1 at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/ongame/respawn_beacon/set_respawn_beacon_position
execute if score #mad Second matches 20 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon/position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 19 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon/position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 18 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon/position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 17 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon/position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 16 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon/position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon

## Detect respawn beacon
execute if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon/structure] at @s run function mad:system/ongame/respawn_beacon/main

## Change phase
execute if score #mad Second matches 0 if score #mad Tick matches 0 run function mad:system/preparation/change_to