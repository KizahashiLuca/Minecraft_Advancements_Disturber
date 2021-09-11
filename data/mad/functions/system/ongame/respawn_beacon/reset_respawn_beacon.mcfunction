#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
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

## Scoreboard
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Reset data 
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove a tag
tag @s remove SetRespawnBanner