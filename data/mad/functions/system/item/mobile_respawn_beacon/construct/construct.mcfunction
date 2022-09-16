#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Create respawn beacon
fill ~-1 ~ ~-1 ~1 ~2 ~1 minecraft:bedrock destroy
fill ~-1 ~1 ~ ~1 ~2 ~ minecraft:air
fill ~ ~1 ~-1 ~ ~2 ~1 minecraft:air
fill ~-1 ~2 ~-1 ~1 ~2 ~1 minecraft:air
setblock ~ ~ ~ minecraft:barrier

## Summon cloud
summon minecraft:area_effect_cloud ~0.0 ~1.0 ~0.0 {Tags:["MAD_MobileRespawnBeacon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,CustomName:'{"text":"モバイルリスポーンビーコン"}',CustomNameVisible:1b,Duration:2147483647}
scoreboard players operation @e[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure,distance=..0.2] BeaconNumber = #mad BeaconNumber
scoreboard players add #mad BeaconNumber 1

## Kill armor stand
kill @s