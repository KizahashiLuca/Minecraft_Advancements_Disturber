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
scoreboard players operation #mad SetTeamManual = #mad SetTeamManualPrv
scoreboard players operation #mad NumberOfTeams = #mad NumberOfTeamsPrv
scoreboard players operation #mad NumberOfBeacons = #mad NumberOfBeaconsPrv

## Send messages
function mad:system/begin/gui/team_match/send_message