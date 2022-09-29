#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send time limit messages
tellraw @a ["",{"translate":"[初期生存時間] %s秒","with":[{"score":{"name":"#mad","objective":"TimeLimit"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function mad:system/begin/gui/root/change_to