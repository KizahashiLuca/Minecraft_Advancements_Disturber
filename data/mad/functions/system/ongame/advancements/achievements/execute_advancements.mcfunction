#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## on a rail
scoreboard players set @a[nbt=!{RootVehicle:{Entity:{id:"minecraft:minecart"}}}] RailDistance 0

## fly pig
execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] store result score @s FallDistance run data get entity @s RootVehicle.Entity.FallDistance
