#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad TimeLimit = #mad TimeLimitPrv

## Send messages
function mad:system/begin/gui/initial_time/send_message