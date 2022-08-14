#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send adding time messages
tellraw @a ["",{"text":"[追加生存時間] ","color":"green"},{"score":{"name":"#mad","objective":"AddingTime"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true}]

## Change to root
function mad:system/begin/gui/root/change_to