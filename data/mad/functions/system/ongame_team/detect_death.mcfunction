#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true}]

## Detect death
gamemode spectator @s
scoreboard players set @s Death 2
scoreboard players set @s Phase 22

## replaceitem
loot replace entity @s inventory.0 loot minecraft:entities/player

## Spectate
spectate @p[team=TeamA,scores={Phase=21,Death=0},sort=nearest] @s[team=TeamA]
spectate @p[team=TeamB,scores={Phase=21,Death=0},sort=nearest] @s[team=TeamB]
spectate @p[team=TeamC,scores={Phase=21,Death=0},sort=nearest] @s[team=TeamC]
spectate @p[team=TeamD,scores={Phase=21,Death=0},sort=nearest] @s[team=TeamD]
spectate @p[team=TeamE,scores={Phase=21,Death=0},sort=nearest] @s[team=TeamE]