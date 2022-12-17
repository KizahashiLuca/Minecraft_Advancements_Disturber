#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect in hand
execute as @a[predicate=mad:system/item/homing_evoker_fangs_wand/not_lockon/in_hand] run function mad:system/item/homing_evoker_fangs_wand/find_target/set_target
execute as @a[predicate=mad:system/item/homing_evoker_fangs_wand/lockon/not_in_hand] run function mad:system/item/homing_evoker_fangs_wand/find_target/reset_target

## Evoker fangs
execute as @a[predicate=mad:system/item/homing_evoker_fangs_wand/use] run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/main