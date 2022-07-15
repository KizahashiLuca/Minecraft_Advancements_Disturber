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
tag @s add MAD_DetectRespawnBeacon

## Set temporarily scoreboard
scoreboard players set @s ResultTmp 1

## Modify data from banner to cloud
data modify entity @s CustomName set from block ~ ~1 ~ CustomName

## Detect respawn banner set
execute as @a[predicate=mad:player/dead/dead] run function mad:system/common/respawn_beacon/detect_banner_set

## Detect team player exist
scoreboard players set @s ResultTmp 1
execute as @p[team=TeamA,tag=RespawnBannerSetTmp] unless entity @p[predicate=mad:ongame/player/team_a_alive,distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamB,tag=RespawnBannerSetTmp] unless entity @p[predicate=mad:ongame/player/team_b_alive,distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamC,tag=RespawnBannerSetTmp] unless entity @p[predicate=mad:ongame/player/team_c_alive,distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamD,tag=RespawnBannerSetTmp] unless entity @p[predicate=mad:ongame/player/team_d_alive,distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0
execute as @p[team=TeamE,tag=RespawnBannerSetTmp] unless entity @p[predicate=mad:ongame/player/team_e_alive,distance=..2] run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=DetectRespawnBeacon] ResultTmp 0

## Scoreboard
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Send message
execute as @s[scores={ResultTmp=1}] run title @a[distance=..2] title [""]
execute as @s[scores={ResultTmp=1}] run title @a[distance=..2] subtitle ["",{"text":"設定対象 ","color":"white"},{"selector":"@p[tag=RespawnBannerSetTmp]"}]
execute as @s[scores={ResultTmp=1}] run title @a[distance=..2] times 2 20 2

## Break banner
execute as @s[scores={ResultTmp=0}] run setblock ~ ~1 ~ air destroy

## Remove tags
execute as @s[scores={ResultTmp=0}] run function mad:system/ongame/respawn_beacon/reset_respawn_beacon

## Reset data
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Add a tag
execute as @s[scores={ResultTmp=1}] run tag @s add SetRespawnBanner

## Remove tags
tag @a remove RespawnBannerSetTmp
tag @s remove DetectRespawnBeacon