#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
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