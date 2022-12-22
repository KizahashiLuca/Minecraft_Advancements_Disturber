#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players add @s EvokerFangsCount 1

## Set a tag
tag @s[scores={EvokerFangsCount=130..}] add MAD_SetMagicCircle

## Summon fangs
summon minecraft:evoker_fangs ~ ~ ~

## Kill marker
kill @s[scores={EvokerFangsCount=150..}]

## Teleport marker
execute facing entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target] feet if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=1.5..] run tp @s ^ ^ ^0.5
execute facing entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target] feet if entity @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,distance=..1.5] run tp @s @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/target,limit=1]