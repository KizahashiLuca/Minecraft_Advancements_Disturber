#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[predicate=mad:marker/world_spawn] run forceload add ~ ~ ~ ~

## Kill marker
kill @s