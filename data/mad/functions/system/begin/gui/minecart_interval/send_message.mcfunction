#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send adding time messages
tellraw @a ["",{"translate":"[物資投下間隔] %s秒","with":[{"score":{"name":"#mad","objective":"CartInterval"},"bold":true}],"color":"green","bold":false,"italic":false}]

## Change to root
function mad:system/begin/gui/root/change_to