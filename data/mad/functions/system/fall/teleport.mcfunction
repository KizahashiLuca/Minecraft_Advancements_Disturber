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
tag @s add MAD_DetectTeleportee

## Teleport
tp @s @e[predicate=mad:system/fall/teleport/teleporter,limit=1]

## Remove a tag
tag @p[predicate=mad:system/fall/teleport/detect_teleportee] remove MAD_DetectTeleportee