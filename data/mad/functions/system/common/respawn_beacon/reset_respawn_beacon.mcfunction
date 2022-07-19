#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Remove tags - player
tag @s remove MAD_MAD_SetRespawnBanner

## Reset scoreboard - player
scoreboard players reset @s BeaconNumber

## Set scoreboard - banner
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Reset data  - banner
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove a tag - banner
tag @s remove SetRespawnBanner