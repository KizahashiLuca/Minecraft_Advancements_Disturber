#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ブタさんの飛ぶ頃に
execute as @a[predicate=mad:system/game/advancement/achievement/fly_pig] store result score @s FallDistance run data get entity @s RootVehicle.Entity.FallDistance

## 世界のトロッコから
scoreboard players set @a[predicate=mad:system/game/advancement/achievement/on_a_rail] RailDistance 0