#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set preview choice
scoreboard players operation #mad WeatherCyclePrv = #mad WeatherCycle
scoreboard players operation #mad DaylightCyclePrv = #mad DaylightCycle

## Send messages
function mad:system/setting/choose_gamerule/send_message