#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## in this corner of the world
execute if predicate mad:gamerules/world_border/limited as @e[predicate=mad:marker/world_corner] at @s run advancement grant @a[dx=2,dy=600,dz=2] only mad:originals/in_this_corner_of_the_world in_this_corner_of_the_world