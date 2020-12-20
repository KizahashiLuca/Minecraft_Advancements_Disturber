#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Add a tag
tag @s add DetectRespawnBeacon

## Set temporarily scoreboard
scoreboard objectives add ResultTmp dummy
scoreboard players set #mad ResultTmp 1

## Modify data from banner to cloud
data modify entity @s CustomName set from block ~ ~1 ~ CustomName

## Detect respawn banner set
execute as @a[tag=Participant,scores={Phase=22,Death=2}] run function mad:system/ongame/respawn_beacon/detect_respawn_banner_set

## Detect player
scoreboard players operation @s Participant = @p[tag=Participant,tag=RespawnBannerSetTmp,scores={Phase=22,Death=2}] Participant
tag @p[tag=Participant,tag=RespawnBannerSetTmp,scores={Phase=22,Death=2}] remove RespawnBannerSetTmp

## Reset data
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove a tag
tag @s remove DetectRespawnBeacon

## Add a tag
tag @s add SetRespawnBanner