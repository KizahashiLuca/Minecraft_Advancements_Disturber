#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Change weather cycle
scoreboard players add #mad WeatherCycle 1
execute if score #mad WeatherCycle matches 2.. run scoreboard players set #mad WeatherCycle 0
function mad:system/begin/gui/gamerules/change_to