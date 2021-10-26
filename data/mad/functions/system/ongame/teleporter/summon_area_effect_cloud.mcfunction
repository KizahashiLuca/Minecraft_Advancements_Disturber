#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon area effect cloud
forceload add 0 0
execute positioned 0 0 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["TeleporterDest"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

## Merge data
execute as @e[type=minecraft:area_effect_cloud,tag=TeleporterDest,limit=1] run function mad:system/ongame/teleporter/data_merge_area_effect_cloud

## Set scoreboard
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=TeleporterDest,limit=1] TeleportTick 20