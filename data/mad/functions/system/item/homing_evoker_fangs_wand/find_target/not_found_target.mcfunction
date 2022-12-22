#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Found block
particle minecraft:dust 0.071 0.808 0.071 3 ~ ~ ~ 0 0 0 0 0 force @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player]
kill @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon]