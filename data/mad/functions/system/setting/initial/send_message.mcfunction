#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[tag=Host]","color":"green","bold":true},{"text":" はインベントリで","color":"white"}]
tellraw @a ["",{"text":"  初期設定を開始してください。","color":"white"}]
function mad:system/finish/message_common_end

## Change to choose setting
function mad:system/setting/choose_setting/change_to