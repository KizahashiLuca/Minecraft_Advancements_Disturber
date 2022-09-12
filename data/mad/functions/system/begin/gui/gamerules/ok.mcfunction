#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set preview choice
scoreboard players operation #mad WeatherCyclePrv = #mad WeatherCycle
scoreboard players operation #mad DaylightCyclePrv = #mad DaylightCycle
scoreboard players operation #mad DifficultyPrv = #mad Difficulty

## Send messages
function mad:system/begin/gui/gamerules/send_message