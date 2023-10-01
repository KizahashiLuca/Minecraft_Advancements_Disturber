#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  バージョンエラー","color":"yellow","bold":true}]
tellraw @a ["",{"text":"  対応バージョン     : ","color":"white"},{"text":"MC 1.20.2","color":"red","bold":true}]
tellraw @a ["",{"text":"  あなたのバージョン : ","color":"white"},{"text":"MC 1.","color":"red","bold":true},{"score":{"name":"#mad","objective":"Version"},"color":"red","bold":true}]
function mad:system/common/message/end