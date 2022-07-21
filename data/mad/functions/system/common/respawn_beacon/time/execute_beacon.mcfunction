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

## Execute a beacon
execute as @p[predicate=mad:system/common/respawn_beacon/set_respawn_player] run function mad:system/common/respawn_beacon/time/respawn_player

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
data modify entity @s CustomName set value '{"text":"リスポーンビーコン"}'

## Remove a tag
tag @s remove MAD_SetRespawnBanner
tag @s remove MAD_DetectRespawnBanner