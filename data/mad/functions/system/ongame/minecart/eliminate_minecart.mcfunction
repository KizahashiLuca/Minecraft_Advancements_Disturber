#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Jun 2020
## Version   : α-0.2
#####################################

## Eliminate minecart
forceload remove ~ ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=WorldSpawn] run forceload add ~ ~ ~ ~
kill @s