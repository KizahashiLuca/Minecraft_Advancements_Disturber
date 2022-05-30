#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag 
tag @s add DetectMobileBeacon

## Remove tags
execute as @a if score @s MobileBeaconNum = @e[type=minecraft:area_effect_cloud,tag=DetectMobileBeacon,limit=1] MobileBeaconNum run tag @s add DetectMobileBeaconTag
tag @a[tag=DetectMobileBeaconTag] remove MobileRespawnBannerSet
scoreboard players set @a[tag=DetectMobileBeaconTag] MobileBeaconNum 0
tag @a[tag=DetectMobileBeaconTag] remove DetectMobileBeaconTag

## Scoreboard
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Reset data 
data modify entity @s CustomName set value '{"text":"モバイルリスポーンビーコン"}'

## Remove a tag
tag @s remove SetRespawnBanner