#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad DeathPenaltyTime = #mad DeathPenaltyTimePrv

## Send messages
function mad:system/begin/gui/team_match/death_penalty_time/send_message