#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send stop messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  ゲームを中断します。","color":"white"}]
function mad:system/finish/message_common_end