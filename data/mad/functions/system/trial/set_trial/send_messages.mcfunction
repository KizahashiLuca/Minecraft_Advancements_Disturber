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
tellraw @a ["",{"text":"  個人戦のトライアルを開始します。","color":"white"}]
function mad:system/common/message/end

## Change to choose setting
function mad:system/trial/set_trial/change_to