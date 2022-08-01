#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect killed
scoreboard players operation @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive = @p[predicate=mad:player/dying,sort=nearest] Second
scoreboard players operation @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive /= #mad 2
scoreboard players operation @s Second += @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive
scoreboard players operation @s TimeLimit += @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive
scoreboard players operation @s GetTimeLimit += @p[predicate=mad:player/dying,sort=nearest] SecondPerSurvive
scoreboard players operation @s Kill += @s KillTemp
scoreboard players set @s KillTemp 0