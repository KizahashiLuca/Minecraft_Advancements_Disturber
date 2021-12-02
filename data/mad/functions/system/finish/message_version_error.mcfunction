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
tellraw @a ["",{"text":"  バージョンが異なります。","color":"white"}]
tellraw @a ["",{"text":"  対応バージョン : ","color":"white"},{"text":"MC 1.17-","color":"red","bold":true}]
function mad:system/finish/message_common_end