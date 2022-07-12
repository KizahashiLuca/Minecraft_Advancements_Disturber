#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Count players
scoreboard players set #mad NumOfParticipants 0
execute as @a[predicate=mad:player/participant] run scoreboard players add #mad NumOfParticipants 1

## Test
execute if entity @p[predicate=mad:player/test] run scoreboard players set #mad NumOfParticipants 5