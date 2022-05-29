#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Replace item
loot replace entity @s weapon.offhand loot mad:ongame/evoker_fangs_wand/offhand

## Play sound
execute as @s[predicate=mad:ongame/evoker_fangs_wand/no_item] run playsound entity.item.break player @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 2.0

## Add a tag
tag @s add SummonerOfEvokerFangs

## Summon fangs
summon minecraft:marker ~ ~ ~ {Tags:["EvokerFangs","NotSetPlayer"],NoGravity:1b,Invulnerable:1b}
execute as @e[predicate=mad:ongame/evoker_fangs_wand/not_set_marker] at @s run function mad:system/ongame/evoker_fangs_wand/set_marker

## Set evoker fangs
schedule function mad:system/ongame/evoker_fangs_wand/set_fangs 1t append

## Remove tags
tag @s remove SummonerOfEvokerFangs
tag @e[predicate=mad:ongame/evoker_fangs_wand/not_set_marker] remove NotSetPlayer