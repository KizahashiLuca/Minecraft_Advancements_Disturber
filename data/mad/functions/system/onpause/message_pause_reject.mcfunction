#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  現在はゲームを一時停止できません。","color":"white"}]
function mad:system/finish/message_common_end