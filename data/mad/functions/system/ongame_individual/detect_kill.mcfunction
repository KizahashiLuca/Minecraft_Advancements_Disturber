#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Add a tag
tag @s add Killer

## Detect killed
scoreboard players operation @p[predicate=mad:ongame/player/participant_dying,sort=nearest] SecondPerSurvive += @p[predicate=mad:ongame/player/participant_dying,sort=nearest] Second
scoreboard players operation @p[predicate=mad:ongame/player/participant_dying,sort=nearest] SecondPerSurvive /= #mad 2
scoreboard players operation @p[tag=Killer] Second += @p[predicate=mad:ongame/player/participant_dying,sort=nearest] SecondPerSurvive
scoreboard players operation @p[tag=Killer] TimeLimit += @p[predicate=mad:ongame/player/participant_dying,sort=nearest] SecondPerSurvive
scoreboard players operation @p[tag=Killer] GetTimeLimit += @p[predicate=mad:ongame/player/participant_dying,sort=nearest] SecondPerSurvive
scoreboard players operation @p[tag=Killer] Kill += @p[tag=Killer] KillTemp
scoreboard players set @p[tag=Killer] KillTemp 0

## Remove a tag
tag @a remove Killer