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
tellraw @a ["",{"text":"  既にゲームを行っています。","color":"white"}]
tellraw @a ["",{"text":"  新しいゲームは開始できません。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを中断して","color":"white"}]
tellraw @a ["",{"text":"  ください。","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mad:stop","color":"light_purple","hoverEvent":{"action":"show_text","value":"クリックしてゲーム中断"},"clickEvent":{"action":"suggest_command","value":"/function #mad:stop"}}]
function mad:system/common/message/end