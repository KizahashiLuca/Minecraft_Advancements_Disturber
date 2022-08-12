#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
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
effect give @s[gamemode=!spectator] minecraft:resistance 1000000 6 true
effect give @s[gamemode=!spectator] minecraft:fire_resistance 1000000 6 true
effect give @s[gamemode=!spectator] minecraft:water_breathing 1000000 6 true
effect give @s[gamemode=!spectator] minecraft:saturation 1000000 10 true
#### Remove advancements
advancement revoke @s everything

## Count players
function mad:system/begin/set_game/count_players