#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Add 10secs
scoreboard players add #mad TimeLimit 10
execute if predicate mad:system/begin/gui/initial_time/ge_thousand run scoreboard players remove #mad TimeLimit 1000
function mad:system/begin/gui/initial_time/change_to