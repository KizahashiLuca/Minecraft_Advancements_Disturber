#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad DeathPenaltyTime = #mad DeathPenaltyTimePrv

## Send messages
function mad:system/begin/gui/team_match/death_penalty_time/send_message