#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Send number of police messages
execute if score #mad WorldBorder matches 0 run tellraw @a ["",{"text":"[初期設定] ワールドボーダーは ","color":"green"},{"text":"制限なし","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #mad WorldBorder matches 100..2000 run tellraw @a ["",{"text":"[初期設定] ワールドボーダーは ","color":"green"},{"score":{"name":"#mad","objective":"WorldBorder"},"color":"green","bold":true},{"text":"×","color":"green","bold":true},{"score":{"name":"#mad","objective":"WorldBorder"},"color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mad:system/setting/choose_setting/change_to