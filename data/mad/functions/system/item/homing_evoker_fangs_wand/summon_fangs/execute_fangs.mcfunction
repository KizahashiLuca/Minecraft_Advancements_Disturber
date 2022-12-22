#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectFangs

## Set target
execute as @e[sort=nearest] if score @s PlayerUUID0 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/detect_fangs,limit=1] TargetUUID0 if score @s PlayerUUID1 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/detect_fangs,limit=1] TargetUUID1 if score @s PlayerUUID2 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/detect_fangs,limit=1] TargetUUID2 if score @s PlayerUUID3 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/detect_fangs,limit=1] TargetUUID3 run tag @s add MAD_Target

## Summon fangs
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/unset_magic_circle] at @s if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=1.5..] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_homing
execute if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=..1.5] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_magic_circle

## Kill when target dead
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_magic_circle] at @s unless entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=..1.5] run kill @s

## Schedule function
execute as @s run schedule function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_fangs 1t append

## Remove a tag
tag @e remove MAD_Target

## Remove a tag
tag @s remove MAD_DetectFangs