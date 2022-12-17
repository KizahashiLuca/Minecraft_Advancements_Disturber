#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add MAD_DetectLockon

## Summon cloud
execute at @s anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["MAD_DetectLockon"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
data modify entity @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon,limit=1] Rotation set from entity @s Rotation

## Detect target
execute as @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/find_target] at @s run function mad:system/item/homing_evoker_fangs_wand/find_target/loop

## Remove a tag
tag @a remove MAD_DetectLockon