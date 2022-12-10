#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectTeleportee

## Teleport
execute as @e[predicate=mad:system/fall/teleport/teleporter,limit=1] if score @s ParticipantNumber = @p[predicate=mad:system/fall/teleport/detect_teleportee] ParticipantNumber at @s run tp @p[predicate=mad:system/fall/teleport/detect_teleportee] ~ ~ ~

## Remove a tag
tag @p[predicate=mad:system/fall/teleport/detect_teleportee] remove MAD_DetectTeleportee