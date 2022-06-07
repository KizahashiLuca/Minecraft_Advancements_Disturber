#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  現在はゲームを再開できません。","color":"white"}]
function mad:system/finish/message_common_end