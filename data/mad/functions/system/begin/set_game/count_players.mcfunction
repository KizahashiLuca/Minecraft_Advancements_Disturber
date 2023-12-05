#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Count players
scoreboard players set #mad NumOfParticipants 0
execute as @a[predicate=mad:player/participant] run scoreboard players add #mad NumOfParticipants 1

## Test
execute if entity @p[predicate=mad:player/test] run scoreboard players set #mad NumOfParticipants 5