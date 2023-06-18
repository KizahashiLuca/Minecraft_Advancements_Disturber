#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectRespawnBanner

## Remove player
execute as @p[predicate=mad:system/common/respawn_beacon/set_respawn_player] run function mad:system/common/respawn_beacon/reset_respawn_player

## Set scoreboard - banner
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Reset data - banner
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove tags - banner
tag @s remove MAD_SetRespawnBanner
tag @s remove MAD_DetectRespawnBanner