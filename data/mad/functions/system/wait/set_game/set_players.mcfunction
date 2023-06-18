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
effect give @a[predicate=mad:player/participant] minecraft:resistance 1000000 6 true
effect give @a[predicate=mad:player/participant] minecraft:fire_resistance 1000000 6 true
effect give @a[predicate=mad:player/participant] minecraft:water_breathing 1000000 6 true
effect give @a[predicate=mad:player/participant] minecraft:saturation 1000000 10 true
effect give @a[predicate=mad:player/participant] minecraft:regeneration 1000000 10 true
effect give @a[predicate=mad:player/participant] minecraft:slow_falling 1000000 3 true
effect give @a[predicate=mad:player/participant] minecraft:invisibility 1000000 1 true
effect give @a[predicate=mad:player/participant] minecraft:weakness 1000000 6 true

## Remove advancements
advancement revoke @a everything

## Take recipes
recipe take @a *