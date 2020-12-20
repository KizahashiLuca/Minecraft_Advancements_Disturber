#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
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
spectate @r[team=TeamA,scores={Phase=21,Death=0}] @s[team=TeamA]
spectate @r[team=TeamB,scores={Phase=21,Death=0}] @s[team=TeamB]
spectate @r[team=TeamC,scores={Phase=21,Death=0}] @s[team=TeamC]
spectate @r[team=TeamD,scores={Phase=21,Death=0}] @s[team=TeamD]
spectate @r[team=TeamE,scores={Phase=21,Death=0}] @s[team=TeamE]