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
tellraw @a ["",{"text":"  現在はゲームを再開できません。","color":"white"}]
function mad:system/finish/message_common_end