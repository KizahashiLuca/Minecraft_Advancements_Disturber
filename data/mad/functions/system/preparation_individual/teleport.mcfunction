#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Add a tag
tag @s add Teleporter

## Teleport
execute as @e[type=minecraft:area_effect_cloud,tag=Teleporter] at @s if score @s Participant = @p[team=Participant,tag=Teleporter] Participant run tp @p[team=Participant,tag=Teleporter] ~ ~ ~

## Remove a tag
tag @p[team=Participant,tag=Teleporter] remove Teleporter