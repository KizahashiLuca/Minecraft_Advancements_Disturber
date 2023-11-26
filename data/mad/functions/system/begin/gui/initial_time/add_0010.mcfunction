#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad TimeLimit 10
execute if predicate mad:system/begin/gui/initial_time/ge_thousand run scoreboard players remove #mad TimeLimit 1000
function mad:system/begin/gui/initial_time/change_to