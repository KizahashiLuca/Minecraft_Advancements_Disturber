#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad WeatherCycle = #mad WeatherCyclePrv
scoreboard players operation #mad DaylightCycle = #mad DaylightCyclePrv
scoreboard players operation #mad Difficulty = #mad DifficultyPrv

## Send messages
function mad:system/begin/gui/gamerules/send_message