#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad SetTeamManualPrv = #mad SetTeamManual
scoreboard players operation #mad NumberOfTeamsPrv = #mad NumberOfTeams
scoreboard players operation #mad NumberOfBeaconsPrv = #mad NumberOfBeacons

## Send messages
function mad:system/begin/gui/team_match/send_message