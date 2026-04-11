#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags - dead player
tag @s add MAD_SetRespawnPlayer
tag @s add MAD_RespawnPlayer
scoreboard players operation @s BeaconNumber = @e[predicate=mad:system/common/respawn_beacon/detect_respawn_banner,limit=1] BeaconNumber