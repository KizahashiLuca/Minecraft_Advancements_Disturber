#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon marker
execute as @e[predicate=mad:ongame/evoker_fangs_wand/set_marker] at @s run summon minecraft:evoker_fangs ^ ^ ^1.5

## Set scoreboard
scoreboard players add @e[predicate=mad:ongame/evoker_fangs_wand/set_marker] EvokerFangsCount 1

## Kill marker
kill @e[predicate=mad:ongame/evoker_fangs_wand/set_marker,scores={EvokerFangsCount=16..}]

## Teleport marker
execute as @e[predicate=mad:ongame/evoker_fangs_wand/set_marker] at @s run tp ^ ^ ^1.5

## Schedule function
execute as @e[predicate=mad:ongame/evoker_fangs_wand/set_marker] run schedule function mad:system/ongame/evoker_fangs_wand/set_fangs 1t append