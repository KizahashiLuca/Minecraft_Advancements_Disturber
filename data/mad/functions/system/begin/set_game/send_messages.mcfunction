#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"---------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  %s はインベントリで","with":[{"selector":"@p[predicate=mad:player/host]","color":"green","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"  初期設定を開始してください。","color":"white","bold":false,"italic":false}]
function mad:system/common/message/end

## Change to choose setting
function mad:system/begin/gui/root/change_to