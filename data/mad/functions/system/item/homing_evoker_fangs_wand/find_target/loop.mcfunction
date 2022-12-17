#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Distance limit
execute unless block ~ ~ ~ #mad:air run particle minecraft:dust 0.071 0.808 0.071 3 ~ ~ ~ 0 0 0 0 0 force @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player]
execute unless block ~ ~ ~ #mad:air run kill @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon]

## Distance limit
execute unless entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,distance=..50] run particle minecraft:dust 0.071 0.808 0.071 3 ~ ~ ~ 0 0 0 0 0 force @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player]
execute unless entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,distance=..50] run kill @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon]

## Find target
execute if entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,distance=3..] if entity @e[type=!#mad:not_mob,sort=nearest,distance=..1.5] run function mad:system/item/homing_evoker_fangs_wand/find_target/found

## Add a tag
tag @s add MAD_NotFoundTarget

## Summon next cloud
execute if entity @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon] if entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,distance=..50] run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["MAD_DetectLockon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}

execute if entity @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon] run data modify entity @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/find_target,limit=1] Rotation set from entity @s Rotation

## Loop
execute as @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/find_target] at @s run function mad:system/item/homing_evoker_fangs_wand/find_target/loop