#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:message/begin
tellraw @a ['',{text:'  個人戦のトライアルを開始します。',color:'white',bold:false,italic:false}]
function mad:message/end

## Change to choose setting
function mad:system/trial/set_trial/change_to