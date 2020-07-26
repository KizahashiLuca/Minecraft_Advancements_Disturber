#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.14-1.15
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Jun 2020
## Version   : α-0.3
#####################################

## Send time limit messages
tellraw @a ["",{"text":"[初期設定] 追加時間は ","color":"green"},{"score":{"name":"#mad","objective":"AddingTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mad:system/setting/choose_setting/change_to