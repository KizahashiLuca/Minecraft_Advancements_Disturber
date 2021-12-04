#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Send stop messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  ゲームを中断します。","color":"white"}]
function mad:system/finish/message_common_end