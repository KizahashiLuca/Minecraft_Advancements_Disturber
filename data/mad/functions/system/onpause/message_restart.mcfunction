#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Send reject messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  ゲームを再開します。","color":"white"}]
function mad:system/finish/message_common_end

## Title
title @a times 20 40 20
title @a title ["",{"text":"RESTART","color":"white","bold":true}]