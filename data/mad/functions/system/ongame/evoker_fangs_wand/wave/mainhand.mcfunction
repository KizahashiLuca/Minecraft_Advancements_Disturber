#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item
loot replace entity @s weapon.mainhand loot mad:ongame/evoker_fangs_wand/mainhand

## Play sound
execute as @s[predicate=mad:ongame/evoker_fangs_wand/mainhand/no_item] run playsound entity.item.break player @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 2.0

## Add a tag
tag @s add SummonerOfEvokerFangs

## Summon fangs
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["EvokerFangs","FangsWaves","NotSetPlayer"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
execute as @e[predicate=mad:ongame/evoker_fangs_wand/wave/not_set_marker] at @s run function mad:system/ongame/evoker_fangs_wand/wave/set_marker

## Set evoker fangs
schedule function mad:system/ongame/evoker_fangs_wand/wave/set_fangs 1t append

## Remove tags
tag @s remove SummonerOfEvokerFangs
tag @e[predicate=mad:ongame/evoker_fangs_wand/wave/not_set_marker] remove NotSetPlayer