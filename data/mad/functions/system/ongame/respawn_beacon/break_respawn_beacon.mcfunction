#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 03 Jan 2021
## Version   : β-1.2
#####################################

## Break respawn beacon
fill ~-1 ~-2 ~-1 ~1 ~3 ~1 minecraft:air

## Load area
setblock ~-0.5 ~ ~-0.5 minecraft:structure_block{mode:"LOAD",powered:0b,posX:-1,posY:-2,posZ:-1,sizeX:3,sizeY:6,sizeZ:3,rotation:"NONE",showboundingbox:1b,showair:1b}

execute if score @s BeaconNumber matches 1 run data merge block ~-0.5 ~ ~-0.5 {name:"mad:save_area1"}
execute if score @s BeaconNumber matches 2 run data merge block ~-0.5 ~ ~-0.5 {name:"mad:save_area2"}
execute if score @s BeaconNumber matches 3 run data merge block ~-0.5 ~ ~-0.5 {name:"mad:save_area3"}
execute if score @s BeaconNumber matches 4 run data merge block ~-0.5 ~ ~-0.5 {name:"mad:save_area4"}
execute if score @s BeaconNumber matches 5 run data merge block ~-0.5 ~ ~-0.5 {name:"mad:save_area5"}

## Set redstone block
setblock ~-0.5 ~1 ~-0.5 minecraft:redstone_block

## Set air
setblock ~-0.5 ~ ~-0.5 minecraft:air
setblock ~-0.5 ~1 ~-0.5 minecraft:air

# Kill armor stand
kill @e[type=minecraft:armor_stand,tag=RespawnBeaconPosition,distance=..0.2,sort=nearest,limit=1]