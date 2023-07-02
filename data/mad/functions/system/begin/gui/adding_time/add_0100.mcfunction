#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 100secs
scoreboard players add #mad AddingTime 100
execute if predicate mad:system/begin/gui/adding_time/ge_thousand run scoreboard players remove #mad AddingTime 1000
function mad:system/begin/gui/adding_time/change_to