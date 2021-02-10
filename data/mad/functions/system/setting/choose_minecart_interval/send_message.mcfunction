#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Send minecart interval messages
tellraw @a ["",{"text":"[初期設定] 支援物資投下間隔は ","color":"green"},{"score":{"name":"#mad","objective":"CartInterval"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Set interval
scoreboard players operation #mad SummonInterval = #mad CartInterval

## Change to choose setting
function mad:system/setting/choose_setting/change_to