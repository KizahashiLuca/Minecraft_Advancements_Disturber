#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## in this corner of the world
execute as @e[predicate=mad:marker/world_corner] at @s run advancement grant @a[dx=2,dy=600,dz=2] only mad:originals/in_this_corner_of_the_world in_this_corner_of_the_world