#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectTeleportee

## Teleport
execute as @e[predicate=mad:system/fall/teleport/teleporter,limit=1] if score @s ParticipantNumber = @p[predicate=mad:system/fall/teleport/detect_teleportee] ParticipantNumber at @s run tp @p[predicate=mad:system/fall/teleport/detect_teleportee] ~ ~ ~

## Remove a tag
tag @p[predicate=mad:system/fall/teleport/detect_teleportee] remove MAD_DetectTeleportee