#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad WeatherCyclePrv = #mad WeatherCycle
scoreboard players operation #mad DaylightCyclePrv = #mad DaylightCycle
scoreboard players operation #mad DifficultyPrv = #mad Difficulty

## Send messages
function mad:system/begin/gui/gamerules/send_message