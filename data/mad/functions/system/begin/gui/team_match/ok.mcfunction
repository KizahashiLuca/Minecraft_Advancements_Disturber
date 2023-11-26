#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad SetTeamManualPrv = #mad SetTeamManual
scoreboard players operation #mad NumberOfTeamsPrv = #mad NumberOfTeams
scoreboard players operation #mad NumberOfBeaconsPrv = #mad NumberOfBeacons

## Send messages
function mad:system/begin/gui/team_match/send_message