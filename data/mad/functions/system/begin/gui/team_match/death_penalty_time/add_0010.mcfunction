#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad DeathPenaltyTime 10
execute if predicate mad:system/begin/gui/team_match/death_penalty_time/ge_thousand run scoreboard players remove #mad DeathPenaltyTime 1000
function mad:system/begin/gui/team_match/death_penalty_time/change_to