#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## in this corner of the world
execute as @e[type=minecraft:area_effect_cloud,tag=WorldCorner] at @s run advancement grant @a[dx=1,dy=256,dz=1] only mad:potage00/in_this_corner_of_the_world in_this_corner_of_the_world
