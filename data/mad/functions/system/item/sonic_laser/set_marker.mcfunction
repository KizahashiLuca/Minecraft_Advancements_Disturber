#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set owner uuid
data modify entity @s Owner set from entity @p[predicate=mad:system/item/sonic_laser/owner] UUID

## Set rotation
data modify entity @s Rotation set from entity @p[predicate=mad:system/item/sonic_laser/owner] Rotation

## Set scoreboard
scoreboard players set @s SonicBoomCount 0