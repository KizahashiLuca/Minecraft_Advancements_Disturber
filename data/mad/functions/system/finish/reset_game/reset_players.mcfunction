#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Kill pet
execute as @e[type=!minecraft:player] if data entity @s Owner run kill @s

## Reset inventory
#clear @a

## Reset experiences
#experience set @a 0 levels
#experience set @a 0 points

## Reset effects
effect clear @a

## Reset recipes
recipe take @a mad:tnt
recipe take @a mad:mobile_respawn_beacon