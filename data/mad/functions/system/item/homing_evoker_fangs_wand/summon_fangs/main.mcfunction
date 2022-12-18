#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect mainhand/offhand - wave
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/not_lockon] at @s run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/not_lockon
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/in_mainhand] at @s run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/in_mainhand
execute as @s[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/in_offhand] at @s run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/in_offhand

## Reset scoreboard
scoreboard players set @s UseFungusStick 0