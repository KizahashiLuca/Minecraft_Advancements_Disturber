#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add Teleportee

## Teleport
execute as @e[predicate=mad:preparation/teleport/teleporter] at @s if score @s Participant = @p[predicate=mad:preparation/teleport/teleportee] Participant run tp @p[predicate=mad:preparation/teleport/teleportee] ~ ~ ~

## Remove a tag
tag @p[predicate=mad:preparation/teleport/teleportee] remove Teleportee