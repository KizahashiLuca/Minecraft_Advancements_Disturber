#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Send messages
execute if score #mad WeatherCycle matches 0 run tellraw @a ["",{"text":"[初期設定] 天気サイクルは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad WeatherCycle matches 1 run tellraw @a ["",{"text":"[初期設定] 天気サイクルは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

execute if score #mad DaylightCycle matches 0 run tellraw @a ["",{"text":"[初期設定] 昼夜サイクルは ","color":"green"},{"text":"OFF","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad DaylightCycle matches 1 run tellraw @a ["",{"text":"[初期設定] 昼夜サイクルは ","color":"green"},{"text":"ON","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mad:system/setting/choose_setting/change_to