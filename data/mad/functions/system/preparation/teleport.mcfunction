#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Add a tag
tag @s add Teleporter

## Teleport
execute as @e[type=minecraft:area_effect_cloud,tag=Teleporter] at @s if score @s Participant = @p[tag=Participant,tag=Teleporter] Participant run tp @p[tag=Participant,tag=Teleporter] ~ ~ ~

## Remove a tag
tag @p[tag=Participant,tag=Teleporter] remove Teleporter