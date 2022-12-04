#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad AddingTime 10
execute if predicate mad:system/begin/gui/adding_time/ge_thousand run scoreboard players remove #mad AddingTime 1000
function mad:system/begin/gui/adding_time/change_to