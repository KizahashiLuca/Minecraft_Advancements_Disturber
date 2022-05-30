#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboard
scoreboard objectives add WeatherCycleTmp dummy

## Change WeatherCycle
execute if score #mad WeatherCycle matches 1 run scoreboard players set #mad WeatherCycleTmp 0
execute if score #mad WeatherCycle matches 0 run scoreboard players set #mad WeatherCycleTmp 1

scoreboard players operation #mad WeatherCycle = #mad WeatherCycleTmp

## Remove scoreboard
scoreboard objectives remove WeatherCycleTmp

## Set inventory
function mad:system/setting/choose_gamerule/change_to