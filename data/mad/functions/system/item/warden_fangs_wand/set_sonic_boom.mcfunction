#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set particle
execute as @e[predicate=mad:system/item/warden_fangs_wand/set_marker] at @s run function mad:system/item/warden_fangs_wand/set_particle

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/warden_fangs_wand/set_marker] SonicBoomCount 1

## Kill marker
kill @e[predicate=mad:system/item/warden_fangs_wand/set_marker,scores={SonicBoomCount=31..}]

## Teleport marker
execute as @e[predicate=mad:system/item/warden_fangs_wand/set_marker] at @s run tp @s ^ ^ ^1.5

## Schedule function
execute as @e[predicate=mad:system/item/warden_fangs_wand/set_marker] run schedule function mad:system/item/warden_fangs_wand/set_sonic_boom 1t append