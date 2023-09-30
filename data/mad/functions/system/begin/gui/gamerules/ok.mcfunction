#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad WeatherCyclePrv = #mad WeatherCycle
scoreboard players operation #mad DaylightCyclePrv = #mad DaylightCycle
scoreboard players operation #mad DifficultyPrv = #mad Difficulty

## Send messages
function mad:system/begin/gui/gamerules/send_message