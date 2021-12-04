#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[predicate=mad:ongame/entity/world_spawn] run forceload add ~ ~ ~ ~