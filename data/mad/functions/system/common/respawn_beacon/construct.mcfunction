#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Save area
#setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",powered:0b,posX:-1,posY:-2,posZ:-1,sizeX:3,sizeY:6,sizeZ:3,showboundingbox:1b,showair:1b}

#execute if score @s BeaconNumber matches 1 run data merge block ~ ~ ~ {name:"mad:save_area1"}
#execute if score @s BeaconNumber matches 2 run data merge block ~ ~ ~ {name:"mad:save_area2"}
#execute if score @s BeaconNumber matches 3 run data merge block ~ ~ ~ {name:"mad:save_area3"}
#execute if score @s BeaconNumber matches 4 run data merge block ~ ~ ~ {name:"mad:save_area4"}
#execute if score @s BeaconNumber matches 5 run data merge block ~ ~ ~ {name:"mad:save_area5"}

## Set redstone block
#setblock ~ ~1 ~ minecraft:redstone_block

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