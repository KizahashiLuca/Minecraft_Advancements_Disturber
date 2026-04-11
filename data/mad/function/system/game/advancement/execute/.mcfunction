#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ブタさんの飛ぶ頃に
execute as @a[predicate=mad:system/game/advancement/achievement/fly_pig] store result score @s FallDistance run data get entity @s RootVehicle.Entity.FallDistance

## 世界のトロッコから
scoreboard players set @a[predicate=mad:system/game/advancement/achievement/on_a_rail] RailDistance 0