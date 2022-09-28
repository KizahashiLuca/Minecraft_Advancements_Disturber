#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamemode
gamemode survival @a[predicate=mad:player/participant]
gamemode spectator @a[predicate=mad:player/not_participant]

## Remove advancements
advancement revoke @a everything
advancement grant @a until mad:originals/adventure
advancement grant @a until mad:originals/collect
advancement grant @a until mad:originals/game
advancement grant @a until mad:achievements/root

## Take recipes
recipe take @a *
recipe give @a[predicate=mad:player/participant] mad:tnt
recipe give @a[predicate=mad:gamerules/match_mode/team,predicate=mad:player/participant] mad:mobile_respawn_beacon

## Kill pet
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Reset inventory
clear @a

## Reset experience
experience set @a 0 levels
experience set @a 0 points

## Set effect
effect clear @a[predicate=mad:player/participant]