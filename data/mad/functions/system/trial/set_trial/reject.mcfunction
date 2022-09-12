#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 13 Sep 2022
## Version   : β-2.0.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  既にゲームを行っています。","color":"yellow","bold":false,"italic":false}]
tellraw @a ["",{"text":"  新しくトライアルは実施できません。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  以下をクリックしてトライアルを中断できます。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"     >> %s","with":[{"text":"トライアル中断","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"クリックしてトライアル中断"},"clickEvent":{"action":"run_command","value":"/function mad:stop"}}],"color":"white","bold":false,"italic":false}]
function mad:system/common/message/end