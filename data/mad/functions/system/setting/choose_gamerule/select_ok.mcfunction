#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
#####################################

## Set preview choice
scoreboard players operation #mad WeatherCyclePrv = #mad WeatherCycle
scoreboard players operation #mad DaylightCyclePrv = #mad DaylightCycle

## Send messages
function mad:system/setting/choose_gamerule/send_message