#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags - dead player
tag @s add MAD_SetRespawnPlayer
tag @s add MAD_RespawnPlayer
scoreboard players operation @s BeaconNumber = @e[predicate=mad:system/common/respawn_beacon/detect_respawn_banner,limit=1] BeaconNumber