#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad KillTimePrv = #mad KillTime

## Send messages
function mad:system/begin/gui/team_match/kill_time/send_message