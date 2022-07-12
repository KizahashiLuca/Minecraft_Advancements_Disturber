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
function mad:system/common/message_begin
tellraw @a ["",{"text":"  人数エラー","color":"yellow","bold":true}]
tellraw @a ["",{"text":"  ゲームの必要人数は","color":"white"},{"text":" 1 - 20 ","color":"red","bold":true},{"text":"人です。","color":"white"}]
function mad:system/common/message_end