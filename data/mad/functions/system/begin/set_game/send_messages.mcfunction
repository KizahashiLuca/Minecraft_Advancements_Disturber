#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[predicate=mad:player/host]","color":"green","bold":true},{"text":" はインベントリで","color":"white"}]
tellraw @a ["",{"text":"  初期設定を開始してください。","color":"white"}]
function mad:system/common/message/end

## Change to choose setting
function mad:system/begin/gui/root/change_to