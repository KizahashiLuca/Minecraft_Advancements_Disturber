#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  個人戦のトライアルを開始します。","color":"white","bold":false,"italic":false}]
function mad:system/common/message/end

## Change to choose setting
function mad:system/trial/set_trial/change_to