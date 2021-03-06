#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Log in the mid of the game
gamemode spectator @a[team=!Participant,team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,gamemode=!spectator]
execute if score #mad IsTeam matches 0 run team leave @a[team=!Participant,team=]
execute if score #mad IsTeam matches 1 run team leave @a[team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,team=]

## Time system
function mad:system/pre_preparation/tick

## Set bossbar & gamerule
execute if score #mad Second matches 29 if score #mad Tick matches 0 if score #mad IsTeam matches 1 if score #mad TeamNumber matches 1.. run function mad:system/pre_preparation/team/team_a
execute if score #mad Second matches 28 if score #mad Tick matches 0 if score #mad IsTeam matches 1 if score #mad TeamNumber matches 2.. run function mad:system/pre_preparation/team/team_b
execute if score #mad Second matches 27 if score #mad Tick matches 0 if score #mad IsTeam matches 1 if score #mad TeamNumber matches 3.. run function mad:system/pre_preparation/team/team_c
execute if score #mad Second matches 26 if score #mad Tick matches 0 if score #mad IsTeam matches 1 if score #mad TeamNumber matches 4.. run function mad:system/pre_preparation/team/team_d
execute if score #mad Second matches 25 if score #mad Tick matches 0 if score #mad IsTeam matches 1 if score #mad TeamNumber matches 5.. run function mad:system/pre_preparation/team/team_e

## Set bossbar
execute if score #mad Second matches 24 if score #mad Tick matches 0 if score #mad IsTeam matches 0 as @a[tag=Participant] run function mad:system/pre_preparation/individual/branch

## Set world border
execute if score #mad Second matches 23 if score #mad Tick matches 0 if score #mad WorldBorder matches 0..1000 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/pre_preparation/world_border/set_world_border_0_1000
execute if score #mad Second matches 22 if score #mad Tick matches 0 if score #mad WorldBorder matches 1100..2000 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/pre_preparation/world_border/set_world_border_1100_2000

## Set respawn beacon
execute if score #mad Second matches 21 if score #mad Tick matches 0 if score #mad IsTeam matches 1 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/ongame/respawn_beacon/set_respawn_beacon_position
execute if score #mad Second matches 20 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon_position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 19 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon_position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 18 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon_position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 17 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon_position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad Second matches 16 if score #mad Tick matches 0 if score #mad IsTeam matches 1 as @e[predicate=mad:ongame/respawn_beacon_position,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon

## Change phase
execute if score #mad Second matches 0 if score #mad Tick matches 0 run function mad:system/preparation/change_to