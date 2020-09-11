#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Teleport
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 0 run spreadplayers ~ ~ 0 1000 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 100 run spreadplayers ~ ~ 0 50 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 200 run spreadplayers ~ ~ 0 100 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 300 run spreadplayers ~ ~ 0 150 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 400 run spreadplayers ~ ~ 0 200 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 500 run spreadplayers ~ ~ 0 250 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 600 run spreadplayers ~ ~ 0 300 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 700 run spreadplayers ~ ~ 0 350 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 800 run spreadplayers ~ ~ 0 400 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 900 run spreadplayers ~ ~ 0 450 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1000 run spreadplayers ~ ~ 0 500 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1100 run spreadplayers ~ ~ 0 550 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1200 run spreadplayers ~ ~ 0 600 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1300 run spreadplayers ~ ~ 0 650 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1400 run spreadplayers ~ ~ 0 700 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1500 run spreadplayers ~ ~ 0 750 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1600 run spreadplayers ~ ~ 0 800 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1700 run spreadplayers ~ ~ 0 850 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1800 run spreadplayers ~ ~ 0 900 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 1900 run spreadplayers ~ ~ 0 950 true @a[team=Participant,tag=!Teleported]
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] if score #mad WorldBorder matches 2000 run spreadplayers ~ ~ 0 1000 true @a[team=Participant,tag=!Teleported]
execute as @a[team=Participant,tag=!Teleported] at @s run tp @s ~ 160 ~

## Detect air 
execute at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tag @s add Teleported

## Loop
execute if entity @p[tag=!Teleported] run function mad:system/preparation/random_teleport