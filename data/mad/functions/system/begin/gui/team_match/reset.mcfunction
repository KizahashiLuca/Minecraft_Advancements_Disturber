#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players set #mad SetTeamManual 0
scoreboard players set #mad NumberOfTeams 2
scoreboard players set #mad NumberOfBeacons 5

## Set inventory
function mad:system/begin/gui/team_match/change_to