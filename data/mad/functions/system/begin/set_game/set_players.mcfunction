#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
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
effect give @a[gamemode=!spectator] minecraft:resistance 1000000 6 true
effect give @a[gamemode=!spectator] minecraft:fire_resistance 1000000 6 true
effect give @a[gamemode=!spectator] minecraft:water_breathing 1000000 6 true
effect give @a[gamemode=!spectator] minecraft:saturation 1000000 10 true
effect give @a[gamemode=!spectator] minecraft:regeneration 1000000 10 true

## Remove advancements
advancement revoke @a everything