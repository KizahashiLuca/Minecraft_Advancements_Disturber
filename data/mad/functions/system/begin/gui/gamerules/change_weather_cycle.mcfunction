#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Change weather cycle
scoreboard players add #mad WeatherCycle 1
execute if score #mad WeatherCycle matches 2.. run scoreboard players set #mad WeatherCycle 0
function mad:system/begin/gui/gamerules/change_to