#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamemode
gamemode survival @a[predicate=mad:player/participant]
gamemode spectator @a[predicate=mad:player/not_participant]

## Remove advancements
advancement revoke @a everything
advancement grant @a until mad:originals/root
advancement grant @a until mad:achievements/root

## Take recipes
recipe take @a *

## Kill pet
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Reset inventory
clear @a

## Give items
loot give @a[predicate=mad:player/participant] loot mad:system/game/first_items

## Reset experience
experience set @a 0 levels
experience set @a 0 points

## Set effect
effect clear @a[predicate=mad:player/participant]
effect give @a[predicate=mad:player/not_participant] minecraft:resistance infinite 6 true
effect give @a[predicate=mad:player/not_participant] minecraft:fire_resistance infinite 6 true
effect give @a[predicate=mad:player/not_participant] minecraft:water_breathing infinite 6 true
effect give @a[predicate=mad:player/not_participant] minecraft:saturation infinite 10 true
effect give @a[predicate=mad:player/not_participant] minecraft:regeneration infinite 10 true
effect give @a[predicate=mad:player/not_participant] minecraft:invisibility infinite 1 true
effect give @a[predicate=mad:player/not_participant] minecraft:night_vision infinite 1 true