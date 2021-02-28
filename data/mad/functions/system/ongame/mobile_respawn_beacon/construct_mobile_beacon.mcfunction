#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Create respawn beacon
fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:bedrock
fill ~-1 ~1 ~ ~1 ~2 ~ minecraft:air
fill ~ ~1 ~-1 ~ ~2 ~1 minecraft:air
fill ~-1 ~2 ~-1 ~1 ~2 ~1 minecraft:air
setblock ~ ~ ~ minecraft:barrier

## Summon cloud
summon minecraft:area_effect_cloud ~0.0 ~ ~0.0 {Tags:["MobileRespawnBeacon"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,CustomName:'{"text":"モバイルリスポーンビーコン"}',CustomNameVisible:1b,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,distance=..0.2,tag=MobileRespawnBeacon] MobileBeaconNum = #mad MobileBeaconNum
scoreboard players add #mad MobileBeaconNum 1

## Kill armor stand
kill @s