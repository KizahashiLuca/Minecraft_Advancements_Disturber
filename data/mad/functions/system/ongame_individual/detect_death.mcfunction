#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
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