#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad TimeLimit = #mad TimeLimitPrv

## Send messages
function mad:system/setting/choose_initial_time/send_message