#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Add tags - dead player
tag @s add MAD_SetRespawnPlayer
tag @s add MAD_RespawnPlayer
scoreboard players operation @s BeaconNumber = @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] BeaconNumber