#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run forceload add ~ ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run kill @s