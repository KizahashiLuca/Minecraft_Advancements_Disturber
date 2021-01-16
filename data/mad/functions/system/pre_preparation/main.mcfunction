#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Log in the mid of the game
gamemode spectator @a[team=!Participant,team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,gamemode=!spectator]
execute if score #mad IsTeam matches 0 run team leave @a[team=!Participant,team=]
execute if score #mad IsTeam matches 1 run team leave @a[team=!TeamA,team=!TeamB,team=!TeamC,team=!TeamD,team=!TeamE,team=]

## Time system
function mad:system/pre_preparation/tick

## Set respawn beacon
execute if score #mad IsTeam matches 1 if score #mad Second matches 6 if score #mad Tick matches 0 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run function mad:system/ongame/respawn_beacon/set_respawn_beacon_position
execute if score #mad IsTeam matches 1 if score #mad Second matches 5 if score #mad Tick matches 0 as @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad IsTeam matches 1 if score #mad Second matches 4 if score #mad Tick matches 0 as @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad IsTeam matches 1 if score #mad Second matches 3 if score #mad Tick matches 0 as @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad IsTeam matches 1 if score #mad Second matches 2 if score #mad Tick matches 0 as @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon
execute if score #mad IsTeam matches 1 if score #mad Second matches 1 if score #mad Tick matches 0 as @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition,limit=1] at @s run function mad:system/ongame/respawn_beacon/construct_respawn_beacon

## Change phase
execute if score #mad Second matches 0 if score #mad Tick matches 0 run function mad:system/preparation/change_to