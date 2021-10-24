#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Change gamerules always
gamerule maxCommandChainLength 65536

## Send Title Message
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの必要人数は","color":"white"},{"text":" 20 ","color":"red","bold":true},{"text":"人までです。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを開始して","color":"white"}]
tellraw @a ["",{"text":"  ください。","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mad:start","color":"light_purple","hoverEvent":{"action":"show_text","value":"クリックしてゲーム開始"},"clickEvent":{"action":"suggest_command","value":"/function #mad:start"}}]
function mad:system/finish/message_common_end