#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/choose_gamerule/weather_cycle
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/choose_gamerule/daylight_cycle
loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.22 loot mad:setting/common/reset
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine

## Set nether_star above selected time limit
execute if score #mad WeatherCycle matches 0 run loot replace entity @p[tag=Host] inventory.3 loot mad:setting/common/off
execute if score #mad WeatherCycle matches 1 run loot replace entity @p[tag=Host] inventory.3 loot mad:setting/common/on
execute if score #mad DaylightCycle matches 0 run loot replace entity @p[tag=Host] inventory.5 loot mad:setting/common/off
execute if score #mad DaylightCycle matches 1 run loot replace entity @p[tag=Host] inventory.5 loot mad:setting/common/on