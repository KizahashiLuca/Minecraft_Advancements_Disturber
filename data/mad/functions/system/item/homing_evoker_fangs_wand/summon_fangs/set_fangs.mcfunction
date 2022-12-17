#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon marker
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] at @s run summon minecraft:evoker_fangs ~ ~ ~

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] EvokerFangsCount 1

## Kill marker
kill @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker,scores={EvokerFangsCount=50..}]

## Teleport marker
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] at @s run tp ^ ^ ^1.5
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] at @s run data modify entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/summoned_fangs,sort=nearest,limit=1] Owner set from entity @s Owner

## Schedule function
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] run schedule function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_fangs 1t append