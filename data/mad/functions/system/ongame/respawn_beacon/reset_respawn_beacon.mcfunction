#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Remove tags
execute as @s[scores={BeaconNumber=1}] run tag @a[tag=RespawnBannerSet1] remove RespawnBannerSet
execute as @s[scores={BeaconNumber=1}] run tag @a[tag=RespawnBannerSet1] remove RespawnBannerSet1

execute as @s[scores={BeaconNumber=2}] run tag @a[tag=RespawnBannerSet2] remove RespawnBannerSet
execute as @s[scores={BeaconNumber=2}] run tag @a[tag=RespawnBannerSet2] remove RespawnBannerSet2

execute as @s[scores={BeaconNumber=3}] run tag @a[tag=RespawnBannerSet3] remove RespawnBannerSet
execute as @s[scores={BeaconNumber=3}] run tag @a[tag=RespawnBannerSet3] remove RespawnBannerSet3

execute as @s[scores={BeaconNumber=4}] run tag @a[tag=RespawnBannerSet4] remove RespawnBannerSet
execute as @s[scores={BeaconNumber=4}] run tag @a[tag=RespawnBannerSet4] remove RespawnBannerSet4

execute as @s[scores={BeaconNumber=5}] run tag @a[tag=RespawnBannerSet5] remove RespawnBannerSet
execute as @s[scores={BeaconNumber=5}] run tag @a[tag=RespawnBannerSet5] remove RespawnBannerSet5

## Reset data 
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove a tag
tag @s remove SetRespawnBanner