#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Send title messages
title @a title ["",{"text":"MAD start","color":"red"}]

## Send setting messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  ゲームを開始します。","color":"white"}]
function mad:system/finish/message_common_end

## Change to start
function mad:system/ongame/change_to