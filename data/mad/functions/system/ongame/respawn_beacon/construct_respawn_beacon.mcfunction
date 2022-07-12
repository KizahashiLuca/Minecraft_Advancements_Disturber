#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Save area
setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",powered:0b,posX:-1,posY:-2,posZ:-1,sizeX:3,sizeY:6,sizeZ:3,showboundingbox:1b,showair:1b}

execute if score @s NumberOfBeacons matches 1 run data merge block ~ ~ ~ {name:"mad:save_area1"}
execute if score @s NumberOfBeacons matches 2 run data merge block ~ ~ ~ {name:"mad:save_area2"}
execute if score @s NumberOfBeacons matches 3 run data merge block ~ ~ ~ {name:"mad:save_area3"}
execute if score @s NumberOfBeacons matches 4 run data merge block ~ ~ ~ {name:"mad:save_area4"}
execute if score @s NumberOfBeacons matches 5 run data merge block ~ ~ ~ {name:"mad:save_area5"}

## Set redstone block
setblock ~ ~1 ~ minecraft:redstone_block

## Create respawn beacon
fill ~-1 ~-2 ~-1 ~1 ~3 ~1 minecraft:bedrock
fill ~-1 ~1 ~ ~1 ~2 ~ minecraft:air
fill ~ ~1 ~-1 ~ ~2 ~1 minecraft:air
setblock ~ ~ ~ minecraft:barrier
setblock ~ ~-1 ~ minecraft:end_gateway{Age:0L}
execute if score @s NumberOfBeacons matches 1 run fill ~-1 ~4 ~-1 ~1 ~6 ~1 minecraft:barrier
execute if score @s NumberOfBeacons matches 1 run fill ~ ~4 ~ ~ ~5 ~ minecraft:air
execute if score @s NumberOfBeacons matches 1 run tp @a ~ ~4 ~

## Summon cloud
summon minecraft:area_effect_cloud ~0.0 ~ ~0.0 {Tags:["RespawnBeacon"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,CustomName:'{"text":"リスポーンビーコン"}',CustomNameVisible:1b,Duration:2147483647}
scoreboard players operation @e[predicate=mad:ongame/respawn_beacon/structure,distance=..0.2] NumberOfBeacons = @s NumberOfBeacons

## Kill armor stand
kill @s