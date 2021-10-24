#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Send difficulty messages
execute if score #mad Difficulty matches 1 run tellraw @a ["",{"text":"[初期設定] 難易度は ","color":"green"},{"text":"イージー","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad Difficulty matches 2 run tellraw @a ["",{"text":"[初期設定] 難易度は ","color":"green"},{"text":"ノーマル","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad Difficulty matches 3 run tellraw @a ["",{"text":"[初期設定] 難易度は ","color":"green"},{"text":"ハード","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mad:system/setting/choose_setting/change_to