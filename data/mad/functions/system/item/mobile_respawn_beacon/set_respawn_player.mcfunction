#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
title @a[distance=..5] title [""]
title @a[distance=..5] subtitle ["",{"text":"設定対象 ","color":"white","bold":false,"italic":false},{"selector":"@p[predicate=mad:system/item/mobile_respawn_beacon/respawn_player]","color":"white","bold":false,"italic":false}]
title @a[distance=..5] times 2 20 2

## Set scoreboard - banner
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Add a tag - banner
tag @s add MAD_SetRespawnBanner

## Reset data - banner
data modify entity @s CustomName set value '{"text":"モバイルリスポーンビーコン"}'