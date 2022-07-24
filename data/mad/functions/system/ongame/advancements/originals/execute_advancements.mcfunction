#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## in this corner of the world
execute as @e[predicate=mad:marker/world_corner] at @s run advancement grant @a[dx=1,dy=400,dz=1] only mad:originals/in_this_corner_of_the_world in_this_corner_of_the_world
