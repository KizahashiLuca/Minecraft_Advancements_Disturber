#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Execute no trigger advancements
## break_spawner
# advancement grant @a[tag=Participant,scores={BreakSpawner=1..}] only mad:potage00/break_spawner break_spawner

## in this corner of the world
execute as @e[type=minecraft:area_effect_cloud,tag=WorldCorner] at @s run advancement grant @a[tag=Participant,dx=1,dy=256,dz=1] only mad:potage00/in_this_corner_of_the_world in_this_corner_of_the_world
