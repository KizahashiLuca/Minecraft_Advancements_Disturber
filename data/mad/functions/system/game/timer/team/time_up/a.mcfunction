#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true,"italic":false}]
title @s times 20 80 20

## Kill the alive
kill @s
gamemode spectator @s

## Set scoreboard
scoreboard players set @s Death 2
scoreboard players set @s Phase 22
scoreboard players set #mad_team_a Second 0