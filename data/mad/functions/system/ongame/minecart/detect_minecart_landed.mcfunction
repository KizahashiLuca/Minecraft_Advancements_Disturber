#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run forceload add ~ ~ ~ ~