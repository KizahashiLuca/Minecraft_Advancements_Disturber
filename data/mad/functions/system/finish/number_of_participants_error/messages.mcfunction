#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  人数エラー","color":"yellow","bold":true}]
tellraw @a ["",{"text":"  ゲームの必要人数は","color":"white"},{"text":" 1 - 20 ","color":"red","bold":true},{"text":"人です。","color":"white"}]
function mad:system/common/message/end