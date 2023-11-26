#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send adding time messages
tellraw @a ["",{"translate":"[追加生存時間] %s秒","with":[{"score":{"name":"#mad","objective":"AddingTime"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function mad:system/begin/gui/root/change_to