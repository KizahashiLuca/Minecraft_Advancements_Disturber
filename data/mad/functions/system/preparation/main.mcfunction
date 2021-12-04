#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
gamemode spectator @a[team=!Participant,team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,gamemode=!spectator]
execute if score #mad IsTeam matches 0 run team leave @a[team=!Participant,team=]
execute if score #mad IsTeam matches 1 run team leave @a[team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,team=]

## Position
execute as @a run function mad:system/ongame/set_position/main

## Detect onground
execute as @a[scores={OnGround=0},tag=Participant] store result score @s OnGround run data get entity @s OnGround 1
execute as @a[scores={OnGround=0},tag=Participant] at @s if block ~ ~ ~ minecraft:water if block ~ ~1 ~ minecraft:water run scoreboard players set @s OnGround 1
execute as @a[scores={OnGround=1},tag=Participant] at @s run function mad:system/preparation/teleporter

## Teleport
execute as @a[scores={OnGround=2},tag=Participant] run function mad:system/preparation/teleport

## Detect respawn beacon
execute as @e[predicate=mad:ongame/respawn_beacon/structure] at @s run function mad:system/ongame/respawn_beacon/main
execute as @e[predicate=mad:ongame/respawn_beacon/position] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon

## Change phase
execute unless entity @p[scores={OnGround=0..1},tag=Participant] run function mad:system/preparation/send_message