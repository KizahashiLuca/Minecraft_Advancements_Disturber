#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Summon marker
execute as @e[predicate=mad:system/item/sonic_laser/boom/set_marker] at @s anchored eyes run particle minecraft:sonic_boom ^ ^ ^2.0 0 0 0 1.0 1
execute as @e[predicate=mad:system/item/sonic_laser/boom/set_marker] at @s anchored eyes run playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.0
execute as @e[predicate=mad:system/item/sonic_laser/boom/set_marker] at @s anchored eyes run effect give @e[distance=..2] minecraft:instant_damage 1 1 true

## Set scoreboard
scoreboard players add @e[predicate=mad:system/item/sonic_laser/boom/set_marker] SonicBoomCount 1

## Kill marker
kill @e[predicate=mad:system/item/sonic_laser/boom/set_marker,scores={SonicBoomCount=25..}]

## Teleport marker
execute as @e[predicate=mad:system/item/sonic_laser/boom/set_marker] at @s run tp ^ ^ ^2.0
execute as @e[predicate=mad:system/item/sonic_laser/boom/set_marker] at @s run data modify entity @e[predicate=mad:system/item/sonic_laser/summoned_boom,sort=nearest,limit=1] Owner set from entity @s Owner

## Schedule function
execute as @e[predicate=mad:system/item/sonic_laser/boom/set_marker] run schedule function mad:system/item/sonic_laser/set_boom 1t append