#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
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