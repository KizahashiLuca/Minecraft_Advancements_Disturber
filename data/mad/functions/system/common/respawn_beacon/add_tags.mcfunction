#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags - dead player
tag @s add MAD_SetRespawnPlayer
tag @s add MAD_RespawnPlayer
scoreboard players operation @s BeaconNumber = @e[predicate=mad:system/common/respawn_beacon/detect_respawn_banner,limit=1] BeaconNumber