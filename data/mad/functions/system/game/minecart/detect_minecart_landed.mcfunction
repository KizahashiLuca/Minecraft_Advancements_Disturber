#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Unload chunk
execute at @s run forceload remove ~ ~ ~ ~
execute at @e[predicate=mad:marker/world_spawn] run forceload add ~ ~ ~ ~

## Kill marker
kill @s