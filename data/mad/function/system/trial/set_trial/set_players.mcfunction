#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamemode
gamemode survival @a[predicate=mad:player/]
gamemode spectator @a[predicate=mad:player/not_player]

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
effect clear @a[predicate=mad:player/]