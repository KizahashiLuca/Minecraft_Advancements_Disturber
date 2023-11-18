#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
#### Spectator
gamemode spectator @s[gamemode=spectator]
tag @s[gamemode=spectator] remove MAD_Participant
team leave @s[gamemode=spectator]
scoreboard players reset @s[gamemode=spectator]

#### Not spectator
gamemode adventure @s[gamemode=!spectator]
tag @s[gamemode=!spectator] add MAD_Participant
team join Participant @s[gamemode=!spectator]

## Set player
#### Set bossbar
bossbar set minecraft:bossbar players @s
#### Reset inventory
clear @s
#### Reset experience
experience set @s 0 levels
experience set @s 0 points
#### Set effect
effect clear @s
effect give @s[gamemode=!spectator] minecraft:resistance infinite 6 true
effect give @s[gamemode=!spectator] minecraft:fire_resistance infinite 6 true
effect give @s[gamemode=!spectator] minecraft:water_breathing infinite 6 true
effect give @s[gamemode=!spectator] minecraft:saturation infinite 10 true
effect give @s[gamemode=!spectator] minecraft:regeneration infinite 10 true
effect give @s[gamemode=!spectator] minecraft:invisibility infinite 1 true
effect give @s[gamemode=!spectator] minecraft:night_vision infinite 1 true
#### Remove advancements
advancement revoke @s everything

## Count players
function mad:system/begin/set_game/count_players