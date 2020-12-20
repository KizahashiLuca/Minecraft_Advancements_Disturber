#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Reset choice
scoreboard players operation #mad TimeLimit = #mad TimeLimitPrv

## Send messages
function mad:system/setting/choose_initial_time/send_message