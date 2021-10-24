#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport origin
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 0 run spreadplayers ~ ~ 0 1000 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 100 run spreadplayers ~ ~ 0 50 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 200 run spreadplayers ~ ~ 0 100 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 300 run spreadplayers ~ ~ 0 150 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 400 run spreadplayers ~ ~ 0 200 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 500 run spreadplayers ~ ~ 0 250 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 600 run spreadplayers ~ ~ 0 300 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 700 run spreadplayers ~ ~ 0 350 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 800 run spreadplayers ~ ~ 0 400 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 900 run spreadplayers ~ ~ 0 450 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1000 run spreadplayers ~ ~ 0 500 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1100 run spreadplayers ~ ~ 0 550 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1200 run spreadplayers ~ ~ 0 600 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1300 run spreadplayers ~ ~ 0 650 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1400 run spreadplayers ~ ~ 0 700 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1500 run spreadplayers ~ ~ 0 750 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1600 run spreadplayers ~ ~ 0 800 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1700 run spreadplayers ~ ~ 0 850 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1800 run spreadplayers ~ ~ 0 900 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 1900 run spreadplayers ~ ~ 0 950 true @s
execute at @e[predicate=mad:ongame/entity/world_spawn,limit=1] if score #mad WorldBorder matches 2000 run spreadplayers ~ ~ 0 1000 true @s
execute at @e[type=minecraft:area_effect_cloud,tag=Minecart,limit=1] run tp @s ~ 160 ~

## Detect air  
execute at @s if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tag @s add Teleported
execute at @s[tag=Teleported] run forceload add ~ ~ ~ ~
execute as @s[tag=!Teleported] run function mad:system/ongame/minecart/teleport_minecart