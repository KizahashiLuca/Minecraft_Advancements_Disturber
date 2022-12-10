#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set owner uuid
data modify entity @s Owner set from entity @p[predicate=mad:system/item/evoker_fangs_wand/owner] UUID

## Set rotation
data modify entity @s Rotation[0] set from entity @p[predicate=mad:system/item/evoker_fangs_wand/owner] Rotation[0]
data modify entity @s Rotation[1] set value 0.f

## Set scoreboard
scoreboard players set @s EvokerFangsCount 0