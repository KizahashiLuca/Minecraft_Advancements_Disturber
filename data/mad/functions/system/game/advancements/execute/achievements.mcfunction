#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Execute no trigger advancements
## on a rail
scoreboard players set @a[predicate=mad:system/game/advancements/achievements/on_a_rail] RailDistance 0

## fly pig
execute as @a[predicate=mad:system/game/advancements/achievements/fly_pig] store result score @s FallDistance run data get entity @s RootVehicle.Entity.FallDistance