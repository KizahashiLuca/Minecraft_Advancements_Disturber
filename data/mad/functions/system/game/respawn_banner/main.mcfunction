#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon cloud
execute as @s[predicate=mad:armor_stand/respawn_banner/not_set_cloud] run function mad:system/game/respawn_banner/set_respawn_cloud

## Detect banner owner exists
execute as @s run function mad:system/game/respawn_banner/detect_banner_owner_exists

## Detect banner exists
execute if predicate mad:system/game/respawn_banner/not_exist_banner run function mad:system/game/respawn_banner/detect_respawn_banner

## Break structure
execute unless entity @e[predicate=mad:area_effect_cloud/respawn_banner/structure,distance=..0.2] run function mad:system/game/respawn_banner/break_respawn_banner