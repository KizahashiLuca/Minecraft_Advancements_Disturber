#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Find target
tag @e[type=!#mad:not_mob,distance=..1.5,sort=nearest,limit=1] add MAD_LockonTarget

## Set uuid
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_target,limit=1] run function mad:system/item/homing_evoker_fangs_wand/find_target/set_own_uuid
scoreboard players set @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] ChangeTarget 1
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_target,limit=1] run function mad:system/item/homing_evoker_fangs_wand/find_target/set_target_uuid
execute as @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/not_change_target] run scoreboard players set @s ChangeTarget 1
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player,limit=1] run function mad:system/item/homing_evoker_fangs_wand/find_target/set_prev_uuid

## Send message
title @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/change_target] title [""]
title @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/change_target] subtitle ["",{"text":"Locked on ","color":"red","italic":false},{"selector":"@e[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_target,limit=1]","color":"red","italic":false}]

## Play sound
execute at @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/change_target] run playsound minecraft:block.glass.place master @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/change_target] ~ ~ ~ 1.0 1.0
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1.0 1.0

## Particle
execute if entity @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon] run particle minecraft:dust 1 0 0 3 ~ ~ ~ 0 0 0 0 0 force @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player]

## Remove a tag
tag @e[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_target] remove MAD_LockonTarget

## Add a tag
tag @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] add MAD_LockonTarget

## Kill cloud
kill @e[predicate=mad:area_effect_cloud/homing_evoker_fangs_wand/detect_lockon]