#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Change weather cycle
scoreboard players add #mad WeatherCycle 1
execute if score #mad WeatherCycle matches 2.. run scoreboard players set #mad WeatherCycle 0
function mad:system/begin/gui/gamerules/change_to