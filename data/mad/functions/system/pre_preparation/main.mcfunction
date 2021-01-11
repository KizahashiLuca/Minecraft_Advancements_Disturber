#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

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