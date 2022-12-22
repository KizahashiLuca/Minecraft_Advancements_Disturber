#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon fangs
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~
summon minecraft:evoker_fangs ~ ~ ~

## Set magic circle
spreadplayers ~ ~ 0 4.0 false @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/summoned_fangs,sort=nearest]

## Set scoreboard
scoreboard players set @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/unset_magic_circle] EvokerFangsCount 60

## Set a tag
tag @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/unset_magic_circle] add MAD_SetMagicCircle

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] EvokerFangsCount 1

## Kill marker
kill @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker,scores={EvokerFangsCount=75..}]

## Remove a tag
tag @e remove MAD_Target

## Schedule function
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker] run schedule function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_fangs 1t append