#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true}]
title @a times 20 80 20

## Detect death
gamemode spectator @s
scoreboard players add #mad NumDead 1
scoreboard players set @s Death 2
scoreboard players set @s Phase 22
scoreboard players set @s DeadOwnTeam 1

scoreboard players reset @s Second
scoreboard players reset @s Tick