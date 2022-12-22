#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Not found target
execute unless block ~ ~ ~ #mad:air run function mad:system/item/homing_evoker_fangs_wand/find_target/not_found_target
execute unless entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,distance=..50] run function mad:system/item/homing_evoker_fangs_wand/find_target/not_found_target

## Find target
execute if entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,distance=3..] if entity @e[type=!#mad:not_mob,sort=nearest,distance=..1.5] run function mad:system/item/homing_evoker_fangs_wand/find_target/found

## Add a tag
tag @s add MAD_NotFoundTarget

## Summon next cloud
execute as @s at @s if entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,distance=..50] run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["MAD_DetectLockon","MAD_NotSetOwner"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/not_set_owner] at @s run function mad:system/item/homing_evoker_fangs_wand/find_target/set_owner

## Loop
execute as @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/find_target] at @s run function mad:system/item/homing_evoker_fangs_wand/find_target/loop