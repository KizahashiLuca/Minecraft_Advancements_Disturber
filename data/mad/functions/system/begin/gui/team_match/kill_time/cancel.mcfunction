#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad KillTime = #mad KillTimePrv

## Send messages
function mad:system/begin/gui/team_match/kill_time/send_message