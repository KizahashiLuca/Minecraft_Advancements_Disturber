#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  人数エラー","color":"yellow","bold":true,"italic":false}]
tellraw @a ["",{"translate":"  ゲームの必要人数は %s 人です。","with":[{"text":" 1 - 20 ","color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
function mad:system/common/message/end