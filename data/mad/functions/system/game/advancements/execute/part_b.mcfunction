#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## in this corner of the world
execute if predicate mad:gamerules/world_border/limited as @e[predicate=mad:marker/world_corner] at @s run advancement grant @a[dx=2,dy=600,dz=2] only mad:originals/in_this_corner_of_the_world in_this_corner_of_the_world

## on a rail
scoreboard players set @a[predicate=mad:system/game/advancements/achievements/on_a_rail] RailDistance 0