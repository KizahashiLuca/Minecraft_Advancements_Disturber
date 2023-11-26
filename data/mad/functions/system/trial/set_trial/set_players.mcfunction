#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
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

## Reset experience
experience set @a 0 levels
experience set @a 0 points

## Set effect
effect clear @a[predicate=mad:player/participant]