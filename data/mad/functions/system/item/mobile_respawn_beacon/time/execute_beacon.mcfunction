#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectRespawnBanner

## Execute a beacon
execute as @p[predicate=mad:system/item/mobile_respawn_beacon/set_respawn_player] run function mad:system/item/mobile_respawn_beacon/time/respawn_player

## Particle
particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.8 0.2 0.05 1000 normal @a
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1.0 2.0
data modify block ~ ~-2 ~ Age set value 0L

## Set scoreboards
scoreboard players set @s Second 20
scoreboard players set @s Tick 0

## Reset block
setblock ~ ~ ~ minecraft:air replace

## Reset data 
data modify entity @s CustomName set value '{"text":"モバイルリスポーンビーコン"}'

## Reset mobile respawn beacon
execute as @s[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure] run fill ~-1 ~-1 ~-1 ~1 ~0 ~1 minecraft:air replace
kill @s[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure]

## Remove a tag
tag @s remove MAD_SetRespawnBanner
tag @s remove MAD_DetectRespawnBanner