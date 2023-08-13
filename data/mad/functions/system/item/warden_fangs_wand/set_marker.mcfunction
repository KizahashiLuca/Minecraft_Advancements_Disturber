#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set owner uuid
data modify entity @s Owner set from entity @p[predicate=mad:system/item/warden_fangs_wand/owner] UUID

## Set rotation
data modify entity @s Rotation set from entity @p[predicate=mad:system/item/warden_fangs_wand/owner] Rotation

## Set scoreboard
scoreboard players set @s SonicBoomCount 0