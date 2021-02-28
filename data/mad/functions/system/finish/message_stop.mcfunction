#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Mar 2021
## Version   : β-1.2.3
#####################################

## Send stop messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  ゲームを中断します。","color":"white"}]
function mad:system/finish/message_common_end