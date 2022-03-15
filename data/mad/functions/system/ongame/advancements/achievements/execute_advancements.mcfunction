#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## on a rail
scoreboard players set @a[nbt=!{RootVehicle:{Entity:{id:"minecraft:minecart"}}}] RailDistance 0

## fly pig
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] store result score @s FallDistance run data get entity @s RootVehicle.Entity.FallDistance
