#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Respawn Banner
execute as @s[predicate=mad:armor_stand/respawn_banner/not_set_cloud] run function mad:system/game/respawn_banner/set_respawn_cloud
execute if predicate mad:system/game/respawn_banner/not_exist_banner run function mad:system/game/respawn_banner/detect_respawn_banner
execute unless entity @e[predicate=mad:area_effect_cloud/respawn_banner/structure,distance=..0.2] run function mad:system/game/respawn_banner/break_respawn_banner