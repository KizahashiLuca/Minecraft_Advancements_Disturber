#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamemode
gamemode adventure @a[predicate=mad:player/participant]

## Kill pet
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Reset inventory
clear @a

## Reset experience
experience set @a 0 levels
experience set @a 0 points

## Set effect
effect clear @a
effect give @a[predicate=mad:player/participant] minecraft:resistance infinite 6 true
effect give @a[predicate=mad:player/participant] minecraft:fire_resistance infinite 6 true
effect give @a[predicate=mad:player/participant] minecraft:water_breathing infinite 6 true
effect give @a[predicate=mad:player/participant] minecraft:saturation infinite 10 true
effect give @a[predicate=mad:player/participant] minecraft:regeneration infinite 10 true
effect give @a[predicate=mad:player/participant] minecraft:slow_falling infinite 3 true
effect give @a[predicate=mad:player/participant] minecraft:invisibility infinite 1 true
effect give @a[predicate=mad:player/participant] minecraft:weakness infinite 6 true

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *