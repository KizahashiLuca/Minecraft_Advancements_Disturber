#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamemode
gamemode adventure @a[gamemode=!spectator]

## Kill pet
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Reset inventory
clear @a

## Reset experience
experience set @a 0 levels
experience set @a 0 points

## Set effect
effect clear @a
effect give @a[gamemode=!spectator] minecraft:resistance infinite 6 true
effect give @a[gamemode=!spectator] minecraft:fire_resistance infinite 6 true
effect give @a[gamemode=!spectator] minecraft:water_breathing infinite 6 true
effect give @a[gamemode=!spectator] minecraft:saturation infinite 10 true
effect give @a[gamemode=!spectator] minecraft:regeneration infinite 10 true
effect give @a[gamemode=!spectator] minecraft:invisibility infinite 1 true

## Remove advancements
advancement revoke @a everything