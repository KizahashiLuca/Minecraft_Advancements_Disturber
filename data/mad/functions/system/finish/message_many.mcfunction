#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  人数が多すぎます。","color":"white"}]
tellraw @a ["",{"text":"  ゲームの必要人数は","color":"white"},{"text":" 20 ","color":"red","bold":true},{"text":"人までです。","color":"white"}]
function mad:system/finish/message_common_end