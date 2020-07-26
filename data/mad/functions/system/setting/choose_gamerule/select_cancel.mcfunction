#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Reset choice
scoreboard players operation #mad WeatherCycle = #mad WeatherCyclePrv
scoreboard players operation #mad DaylightCycle = #mad DaylightCyclePrv

## Send messages
function mad:system/setting/choose_gamerule/send_message