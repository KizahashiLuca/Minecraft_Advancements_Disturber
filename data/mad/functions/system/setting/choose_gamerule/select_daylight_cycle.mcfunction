#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
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