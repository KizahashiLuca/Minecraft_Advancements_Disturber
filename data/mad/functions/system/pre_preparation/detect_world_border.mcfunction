#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboard
scoreboard objectives add WorldBorderTmp dummy

## Set scoreboard
scoreboard players operation #mad WorldBorderTmp = #mad WorldBorder
scoreboard players operation #mad WorldBorderTmp /= #mad 2

## Set world spawn
execute store result score @s PosX run data get entity @s Pos[0]
execute store result score @s PosZ run data get entity @s Pos[2]

## Detect world border in the end
scoreboard players operation @s PosXCeil = @s PosX
scoreboard players operation @s PosZCeil = @s PosZ
scoreboard players operation @s PosXFloor = @s PosX
scoreboard players operation @s PosZFloor = @s PosZ
scoreboard players operation @s PosXCeil += #mad WorldBorderTmp
scoreboard players operation @s PosZCeil += #mad WorldBorderTmp
scoreboard players operation @s PosXFloor -= #mad WorldBorderTmp
scoreboard players operation @s PosZFloor -= #mad WorldBorderTmp
scoreboard players set #mad WorldBorderEnd 0
execute as @s[scores={PosXCeil=200..,PosXFloor=..-200,PosZCeil=200..,PosZFloor=..-200}] run scoreboard players set #mad WorldBorderEnd 1

## Remove scoreboard
scoreboard objectives remove WorldBorderTmp