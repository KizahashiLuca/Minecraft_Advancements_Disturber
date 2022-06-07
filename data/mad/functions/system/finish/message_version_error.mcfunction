#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.18.2
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 30 May 2022
## Version   : β-1.6
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  バージョンが異なります。","color":"white"}]
tellraw @a ["",{"text":"  対応バージョン     : ","color":"white"},{"text":"MC 1.19","color":"red","bold":true}]
tellraw @a ["",{"text":"  あなたのバージョン : ","color":"white"},{"text":"MC 1.","color":"red","bold":true},{"score":{"name":"#mad","objective":"Version"},"color":"red","bold":true}]
function mad:system/finish/message_common_end