#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Send time limit messages
tellraw @a ["",{"text":"[初期生存時間] ","color":"green"},{"score":{"name":"#mad","objective":"TimeLimit"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}]

## Change to root
function mad:system/begin/gui/root/change_to