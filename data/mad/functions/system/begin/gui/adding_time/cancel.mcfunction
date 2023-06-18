#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad AddingTime = #mad AddingTimePrv

## Send messages
function mad:system/begin/gui/adding_time/send_message