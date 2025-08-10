#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム離脱者数を算出
$scoreboard players operation #mad_team_$(team) NumberOfPlayersTmp = #mad_team_$(team) NumberOfPlayers
$scoreboard players operation #mad_team_$(team) NumberOfPlayersTmp -= #mad_team_$(team) MaxNumberOfPlayers

## チーム離脱者数をストレージに格納
$execute store result storage mad: team.$(team).limit int 1 run scoreboard players get #mad_team_$(team) NumberOfPlayersTmp