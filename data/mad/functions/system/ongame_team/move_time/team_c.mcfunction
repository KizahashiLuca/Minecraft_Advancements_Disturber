#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
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

## Detect death
gamemode spectator @s
scoreboard players set @s Death 2
scoreboard players set @s Phase 22

## Remove tag
tag @a remove CalculateTime