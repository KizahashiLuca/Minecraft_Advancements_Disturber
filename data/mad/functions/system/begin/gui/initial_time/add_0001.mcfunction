#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 1secs
scoreboard players add #mad TimeLimit 1
execute if predicate mad:system/begin/gui/initial_time/ge_thousand run scoreboard players remove #mad TimeLimit 1000
function mad:system/begin/gui/initial_time/change_to