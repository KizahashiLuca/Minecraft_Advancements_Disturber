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
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wave/set_marker] at @s run summon minecraft:evoker_fangs ^ ^ ^1.5

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/evoker_fangs_wand/wave/set_marker] EvokerFangsCount 1

## Kill marker
kill @e[predicate=mad:system/item/evoker_fangs_wand/wave/set_marker,scores={EvokerFangsCount=16..}]

## Teleport marker
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wave/set_marker] at @s run tp ^ ^ ^1.5
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wave/set_marker] at @s run data modify entity @e[predicate=mad:system/item/evoker_fangs_wand/summoned_fangs,sort=nearest,limit=1] Owner set from entity @s Owner

## Schedule function
execute as @e[predicate=mad:system/item/evoker_fangs_wand/wave/set_marker] run schedule function mad:system/item/evoker_fangs_wand/wave/set_fangs 1t append