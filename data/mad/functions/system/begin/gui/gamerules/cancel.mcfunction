#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset choice
scoreboard players operation #mad WeatherCycle = #mad WeatherCyclePrv
scoreboard players operation #mad DaylightCycle = #mad DaylightCyclePrv
scoreboard players operation #mad Difficulty = #mad DifficultyPrv

## Send messages
function mad:system/begin/gui/gamerules/send_message