#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[predicate=mad:ongame/entity/world_spawn] run forceload add ~ ~ ~ ~