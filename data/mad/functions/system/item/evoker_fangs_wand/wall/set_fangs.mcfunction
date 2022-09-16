#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon marker
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] at @s run summon minecraft:evoker_fangs ^3.0 ^ ^2.0
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] at @s run summon minecraft:evoker_fangs ^1.5 ^ ^2.0
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] at @s run summon minecraft:evoker_fangs ^ ^ ^2.0
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] at @s run summon minecraft:evoker_fangs ^-1.5 ^ ^2.0
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] at @s run summon minecraft:evoker_fangs ^-3.0 ^ ^2.0

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] EvokerFangsCount 1

## Kill marker
kill @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker,scores={EvokerFangsCount=3..}]

## Teleport marker
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] at @s run tp @s ^ ^ ^2.0
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] at @s run data modify entity @e[predicate=mad:system/item/evoker_fangs_wand/summoned_fangs,sort=nearest,limit=1] Owner set from entity @s Owner

## Schedule function
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wall/set_marker] run schedule function mad:system/item/evoker_fangs_wand/wall/set_fangs 3t append