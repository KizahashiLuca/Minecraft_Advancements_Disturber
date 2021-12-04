#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add Teleporter

## Teleport
execute as @e[type=minecraft:area_effect_cloud,tag=Teleporter] at @s if score @s Participant = @p[tag=Participant,tag=Teleporter] Participant run tp @p[tag=Participant,tag=Teleporter] ~ ~ ~

## Remove a tag
tag @p[tag=Participant,tag=Teleporter] remove Teleporter