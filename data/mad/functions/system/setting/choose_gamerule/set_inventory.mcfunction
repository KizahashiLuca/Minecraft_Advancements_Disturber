#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Set inventory
replaceitem entity @p[tag=Host] inventory.12 minecraft:tube_coral_fan{display:{Name:'"\\u00A7r\\u00A7f天気サイクル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:fire_coral_fan{display:{Name:'"\\u00A7r\\u00A7f昼夜サイクル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.22 minecraft:map{display:{Name:'"\\u00A7r\\u00A7eリセット"'},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39} 1

## Set nether_star above selected time limit
execute if score #mad WeatherCycle matches 0 run replaceitem entity @p[tag=Host] inventory.3 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad DaylightCycle matches 0 run replaceitem entity @p[tag=Host] inventory.5 minecraft:redstone_lamp{display:{Name:'"\\u00A7r\\u00A7fOFF"'},HideFlags:39} 1
execute if score #mad WeatherCycle matches 1 run replaceitem entity @p[tag=Host] inventory.3 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1
execute if score #mad DaylightCycle matches 1 run replaceitem entity @p[tag=Host] inventory.5 minecraft:glowstone{display:{Name:'"\\u00A7r\\u00A7fON"'},HideFlags:39} 1