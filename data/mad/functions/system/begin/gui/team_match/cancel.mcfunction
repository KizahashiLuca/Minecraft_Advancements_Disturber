#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad SetTeamManual = #mad SetTeamManualPrv
scoreboard players operation #mad NumberOfTeams = #mad NumberOfTeamsPrv
scoreboard players operation #mad NumberOfBeacons = #mad NumberOfBeaconsPrv

## Send messages
function mad:system/begin/gui/team_match/send_message