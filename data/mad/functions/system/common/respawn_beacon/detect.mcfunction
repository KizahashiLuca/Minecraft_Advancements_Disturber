#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectRespawnBanner

## Modify data from banner to cloud
data modify entity @s CustomName set from block ~ ~ ~ CustomName

## Detect respawn banner set
scoreboard players set #mad CompareNames 1
execute as @a[predicate=mad:player/dead] run function mad:system/common/respawn_beacon/detect_banner_sets

## Detect team player exist
scoreboard players set #mad DetectTeamExists 1
execute as @a[predicate=mad:system/common/respawn_beacon/respawn_player] run function mad:system/common/respawn_beacon/detect_player_exists

## Send message
execute if predicate mad:system/common/respawn_beacon/set_respawn_condition run function mad:system/common/respawn_beacon/set_respawn_player

## Send message
execute if predicate mad:system/common/respawn_beacon/reset_respawn_condition run setblock ~ ~1 ~ minecraft:air destroy
execute if predicate mad:system/common/respawn_beacon/reset_respawn_condition run function mad:system/common/respawn_beacon/reset_respawn_beacon

## Remove tags
tag @a remove MAD_RespawnPlayer
tag @s remove MAD_DetectRespawnBanner