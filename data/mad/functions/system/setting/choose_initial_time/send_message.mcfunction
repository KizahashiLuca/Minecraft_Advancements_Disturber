#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send time limit messages
tellraw @a ["",{"text":"[初期設定] 初期生存時間は ","color":"green"},{"score":{"name":"#mad","objective":"TimeLimit"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mad:system/setting/choose_setting/change_to