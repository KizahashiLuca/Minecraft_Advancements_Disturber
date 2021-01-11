#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run forceload add ~ ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=Minecart] run kill @s