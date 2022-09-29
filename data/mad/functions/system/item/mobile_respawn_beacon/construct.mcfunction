#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Create respawn beacon
fill ~-1 ~-2 ~-1 ~1 ~3 ~1 minecraft:bedrock
fill ~-1 ~1 ~ ~1 ~2 ~ minecraft:air
fill ~ ~1 ~-1 ~ ~2 ~1 minecraft:air
setblock ~ ~ ~ minecraft:barrier
setblock ~ ~-1 ~ minecraft:end_gateway{Age:0L}
execute as @s[predicate=mad:marker/respawn_beacon/center_of_world_position] at @s run fill ~-1 ~4 ~-1 ~1 ~6 ~1 minecraft:barrier
execute as @s[predicate=mad:marker/respawn_beacon/center_of_world_position] at @s run fill ~ ~4 ~ ~ ~5 ~ minecraft:air
execute as @s[predicate=mad:marker/respawn_beacon/center_of_world_position] at @s run tp @a ~ ~4 ~
execute as @s[predicate=mad:marker/respawn_beacon/center_of_world_position] run fill -15 310 -15 15 319 15 minecraft:air

## Summon cloud
summon minecraft:area_effect_cloud ~0.0 ~1.0 ~0.0 {Tags:["MAD_RespawnBeacon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.01f,CustomName:'{"text":"リスポーンビーコン"}',CustomNameVisible:1b,Duration:2147483647}
scoreboard players operation @e[predicate=mad:area_effect_cloud/respawn_beacon/structure,distance=..1.5] BeaconNumber = @s BeaconNumber

## Kill marker
kill @s