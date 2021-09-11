#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  ゲームを一時停止します。","color":"white"}]
function mad:system/finish/message_common_end

## Title
title @a times 20 40 20
title @a title ["",{"text":"PAUSE","color":"white","bold":true}]
title @a times 20 80 20