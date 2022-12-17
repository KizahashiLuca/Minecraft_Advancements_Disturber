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
data modify entity @s Owner set from entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/owner] UUID

## Set rotation
data modify entity @s Rotation set from entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/owner] Rotation

## Set scoreboard
scoreboard players set @s EvokerFangsCount 0

## Set target uuid
scoreboard players operation @s TargetUUID0 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/owner] TargetUUID0
scoreboard players operation @s TargetUUID1 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/owner] TargetUUID1
scoreboard players operation @s TargetUUID2 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/owner] TargetUUID2
scoreboard players operation @s TargetUUID3 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/owner] TargetUUID3