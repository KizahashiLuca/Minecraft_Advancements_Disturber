#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Save area
setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",powered:0b,posX:-1,posY:-2,posZ:-1,sizeX:3,sizeY:6,sizeZ:3,showboundingbox:1b,showair:1b}

execute if score @s BeaconNumber matches 1 run data merge block ~ ~ ~ {name:"mad:save_area1"}
execute if score @s BeaconNumber matches 2 run data merge block ~ ~ ~ {name:"mad:save_area2"}
execute if score @s BeaconNumber matches 3 run data merge block ~ ~ ~ {name:"mad:save_area3"}
execute if score @s BeaconNumber matches 4 run data merge block ~ ~ ~ {name:"mad:save_area4"}
execute if score @s BeaconNumber matches 5 run data merge block ~ ~ ~ {name:"mad:save_area5"}

## Set redstone block
setblock ~ ~1 ~ minecraft:redstone_block

## Create respawn beacon
fill ~-1 ~-2 ~-1 ~1 ~3 ~1 minecraft:bedrock
fill ~-1 ~1 ~ ~1 ~2 ~ minecraft:air
fill ~ ~1 ~-1 ~ ~2 ~1 minecraft:air
setblock ~ ~ ~ minecraft:barrier
setblock ~ ~-1 ~ minecraft:end_gateway{Age:0L}

## Summon cloud
summon minecraft:area_effect_cloud ~0.0 ~ ~0.0 {Tags:["RespawnBeacon"],NoGravity:1b,Invulnerable:1b,Particle:"block air",Radius:0.5f,CustomName:'{"text":"リスポーンビーコン"}',CustomNameVisible:1b,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,distance=..0.2,tag=RespawnBeacon] BeaconNumber = @s BeaconNumber

## Kill armor stand
kill @s