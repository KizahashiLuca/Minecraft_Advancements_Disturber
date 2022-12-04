#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad DeathPenaltyTime = #mad DeathPenaltyTimePrv

## Send messages
function mad:system/begin/gui/team_match/death_penalty_time/send_message