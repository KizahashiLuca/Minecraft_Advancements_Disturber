#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add a tag
tag @s add Teleporter

## Teleport
execute as @e[type=minecraft:area_effect_cloud,tag=Teleporter] at @s if score @s Participant = @p[tag=Participant,tag=Teleporter] Participant run tp @p[tag=Participant,tag=Teleporter] ~ ~ ~

## Remove a tag
tag @p[tag=Participant,tag=Teleporter] remove Teleporter