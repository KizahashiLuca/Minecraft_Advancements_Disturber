#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Add a tag
execute as @s[team=TeamA] run tag @p[team=TeamA,tag=Leader] add CalculateTime
execute as @s[team=TeamB] run tag @p[team=TeamB,tag=Leader] add CalculateTime
execute as @s[team=TeamD] run tag @p[team=TeamD,tag=Leader] add CalculateTime
execute as @s[team=TeamE] run tag @p[team=TeamE,tag=Leader] add CalculateTime

## Scoreboard
scoreboard players operation @p[team=TeamC,tag=Leader] Second += @p[tag=Leader,tag=CalculateTime] SecondPerSurvive
scoreboard players operation @p[team=TeamC,tag=Leader] TimeLimit += @p[tag=Leader,tag=CalculateTime] SecondPerSurvive
scoreboard players operation @p[team=TeamC,tag=Leader] GetTimeLimit += @p[tag=Leader,tag=CalculateTime] SecondPerSurvive
scoreboard players operation @p[tag=Leader,tag=CalculateTime] Second -= @p[tag=Leader,tag=CalculateTime] SecondPerSurvive

## Title
title @s title ["",{"text":"死んでしまった！","color":"red","bold": true}]

## Detect death
gamemode spectator @s
scoreboard players set @s Death 1
scoreboard players set @s Phase 22

## replaceitem
loot replace entity @s inventory.0 loot minecraft:entities/player

## Remove tag
tag @a remove CalculateTime