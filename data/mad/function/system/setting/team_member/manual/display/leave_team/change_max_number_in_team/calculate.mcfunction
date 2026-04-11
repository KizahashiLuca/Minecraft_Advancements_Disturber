#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム離脱者数を算出
$scoreboard players operation #mad_team_$(team) NumberOfPlayersTmp = #mad_team_$(team) NumberOfPlayers
$scoreboard players operation #mad_team_$(team) NumberOfPlayersTmp -= #mad_team_$(team) MaxNumberOfPlayers

## チーム離脱者数をストレージに格納
$execute store result storage mad: team.$(team).limit int 1 run scoreboard players get #mad_team_$(team) NumberOfPlayersTmp