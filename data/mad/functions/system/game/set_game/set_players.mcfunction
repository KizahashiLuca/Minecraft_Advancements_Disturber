#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
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
effect give @a[predicate=mad:player/not_participant] minecraft:resistance 1000000 6 true
effect give @a[predicate=mad:player/not_participant] minecraft:fire_resistance 1000000 6 true
effect give @a[predicate=mad:player/not_participant] minecraft:water_breathing 1000000 6 true
effect give @a[predicate=mad:player/not_participant] minecraft:saturation 1000000 10 true
effect give @a[predicate=mad:player/not_participant] minecraft:regeneration 1000000 10 true
effect give @a[predicate=mad:player/not_participant] minecraft:invisibility 1000000 1 true
effect give @a[predicate=mad:player/not_participant] minecraft:night_vision 1000000 1 true