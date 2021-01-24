#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Execute no trigger advancements
## on a rail
scoreboard players set @a[tag=Participant,nbt=!{RootVehicle:{Entity:{id:"minecraft:minecart"}}}] RailDistance 0

## fly pig
execute as @a[tag=Participant,nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] store result score @s FallDistance run data get entity @s RootVehicle.Entity.FallDistance
