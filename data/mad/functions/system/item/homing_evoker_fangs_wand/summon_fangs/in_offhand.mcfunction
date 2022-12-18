#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item
item replace entity @s weapon.offhand with minecraft:air

## Play sound
playsound minecraft:entity.item.break player @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 2.0

## Add a tag
tag @s add MAD_SummonerOfHomingEvokerFangs

## Summon fangs
execute anchored feet run summon minecraft:area_effect_cloud ^ ^ ^1.5 {Tags:["MAD_HomingEvokerFangs","MAD_NotSetPlayer"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/not_set_marker] at @s run function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_marker

## Set evoker fangs
function mad:system/item/homing_evoker_fangs_wand/summon_fangs/set_fangs

## Remove tags
tag @s remove MAD_LockonTarget
tag @s remove MAD_SummonerOfHomingEvokerFangs
tag @e[predicate=mad:system/item/homing_evoker_fangs_wand/summon_fangs/not_set_marker] remove MAD_NotSetPlayer