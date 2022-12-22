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
scoreboard players set @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/unset_magic_circle] EvokerFangsCount 130

## Set a tag
tag @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/unset_magic_circle] add MAD_SetMagicCircle

## Summon fangs
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_0] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_0
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_1] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_1
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_2] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_2
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_3] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_3
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_4] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_4
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_5] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/magic_circle/wave_5

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/detect_fangs] EvokerFangsCount 1

## Kill marker
kill @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/detect_fangs,scores={EvokerFangsCount=150..}]