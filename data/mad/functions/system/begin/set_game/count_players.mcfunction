#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Count players
scoreboard players set #mad NumOfParticipants 0
execute as @a[predicate=mad:player/participant] run scoreboard players add #mad NumOfParticipants 1

## Test
execute if entity @p[predicate=mad:player/test] run scoreboard players set #mad NumOfParticipants 5