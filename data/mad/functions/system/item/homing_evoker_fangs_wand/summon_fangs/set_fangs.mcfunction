#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set target
execute as @e if score @s PlayerUUID0 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker,limit=1] TargetUUID0 if score @s PlayerUUID1 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker,limit=1] TargetUUID1 if score @s PlayerUUID2 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker,limit=1] TargetUUID2 if score @s PlayerUUID3 = @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker,limit=1] TargetUUID3 run tag @s add MAD_Target

## Summon fangs
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] at @s if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=1.5..] run summon minecraft:evoker_fangs ~ ~ ~
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] at @s if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=..1.5] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_magic_circle

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] EvokerFangsCount 1

## Kill marker
kill @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker,scores={EvokerFangsCount=75..}]

## Teleport marker
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] at @s facing entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target] feet if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=1.5..] run tp @s ^ ^ ^1.5
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] at @s facing entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target] feet if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=..1.5] run tp @s @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,limit=1]

## Remove a tag
tag @e remove MAD_Target

## Schedule function
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] run schedule function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_fangs 1t append