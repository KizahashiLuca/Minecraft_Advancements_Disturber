#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectRespawnBanner

## Modify data from banner to cloud
data modify entity @s CustomName set from block ~ ~ ~ CustomName

## Detect respawn banner set
scoreboard players set @s ResultTmp 1
execute as @a[predicate=mad:player/dead] run function mad:system/item/mobile_respawn_beacon/detect_banner_sets

## Detect respawn player exist
execute if entity @p[predicate=mad:system/item/mobile_respawn_beacon/respawn_player] run scoreboard players set @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] ResultTmp 1
execute unless entity @p[predicate=mad:system/item/mobile_respawn_beacon/respawn_player] run scoreboard players set @e[predicate=mad:system/item/mobile_respawn_beacon/detect_respawn_banner,limit=1] ResultTmp 0

## Detect team player exist
scoreboard players set @s[scores={ResultTmp=1}] ResultTmp 1
execute as @p[predicate=mad:system/item/mobile_respawn_beacon/respawn_player] run function mad:system/item/mobile_respawn_beacon/detect_player_exists

## Send message
execute as @s[scores={ResultTmp=1}] run function mad:system/item/mobile_respawn_beacon/set_respawn_player

## Send message
execute as @s[scores={ResultTmp=0}] run setblock ~ ~ ~ minecraft:air destroy
execute as @s[scores={ResultTmp=0}] run function mad:system/item/mobile_respawn_beacon/reset_respawn_beacon

## Remove tags
tag @a remove MAD_RespawnPlayer
tag @s remove MAD_DetectRespawnBanner