#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 27 Sep 2022
## Version   : β-2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send time limit messages
tellraw @a ["",{"translate":"[初期生存時間] %s秒","with":[{"score":{"name":"#mad","objective":"TimeLimit"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function mad:system/begin/gui/root/change_to