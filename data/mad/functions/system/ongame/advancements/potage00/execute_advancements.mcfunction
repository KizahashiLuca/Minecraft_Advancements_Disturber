#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Execute no trigger advancements
## break_spawner
advancement grant @a[scores={BreakSpawner=1..}] only mad:break_spawner break_spawner
scoreboard players set @a[scores={BreakSpawner=1..}] BreakSpawner 0

## in this corner of the world
execute if score #mad WorldBorder matches 0 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=42426406..42426407] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 100 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=70..71] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 200 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=141..142] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 300 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=212..213] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 400 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=282..283] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 500 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=353..354] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 600 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=424..425] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 700 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=494..495] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 800 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=565..566] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 900 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=636..637] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1000 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=707..708] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1100 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=777..778] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1200 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=848..849] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1300 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=919..920] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1400 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=989..990] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1500 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=1060..1061] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1600 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=1131..1132] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1700 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=1202..1203] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1800 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=1272..1273] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 1900 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=1343..1344] only mad:in_this_corner_of_the_world
execute if score #mad WorldBorder matches 2000 at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn,limit=1] run advancement grant @a[distance=1414..1415] only mad:in_this_corner_of_the_world
