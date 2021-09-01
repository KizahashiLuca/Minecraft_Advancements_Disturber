#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Add scoreboard
scoreboard objectives add DaylightCycleTmp dummy

## Change DaylightCycle
execute if score #mad DaylightCycle matches 1 run scoreboard players set #mad DaylightCycleTmp 0
execute if score #mad DaylightCycle matches 0 run scoreboard players set #mad DaylightCycleTmp 1

scoreboard players operation #mad DaylightCycle = #mad DaylightCycleTmp

## Remove scoreboard
scoreboard objectives remove DaylightCycleTmp

## Set inventory
function mad:system/setting/choose_gamerule/change_to