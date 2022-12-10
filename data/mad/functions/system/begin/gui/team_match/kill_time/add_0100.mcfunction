#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 100secs
scoreboard players add #mad KillTime 100
execute if predicate mad:system/begin/gui/team_match/kill_time/ge_thousand run scoreboard players remove #mad KillTime 1000
function mad:system/begin/gui/team_match/kill_time/change_to