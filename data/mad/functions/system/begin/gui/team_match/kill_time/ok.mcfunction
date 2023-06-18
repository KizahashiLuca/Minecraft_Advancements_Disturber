#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad KillTimePrv = #mad KillTime

## Send messages
function mad:system/begin/gui/team_match/kill_time/send_message