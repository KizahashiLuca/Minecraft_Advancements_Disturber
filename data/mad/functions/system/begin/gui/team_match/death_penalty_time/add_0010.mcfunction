#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad DeathPenaltyTime 10
execute if predicate mad:system/begin/gui/team_match/death_penalty_time/ge_thousand run scoreboard players remove #mad DeathPenaltyTime 1000
function mad:system/begin/gui/team_match/death_penalty_time/change_to