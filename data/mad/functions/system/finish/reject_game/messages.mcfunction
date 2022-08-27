#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 28 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send reject messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  既にゲームを行っています。","color":"yellow","bold":false,"italic":false}]
tellraw @a ["",{"text":"  新しいゲームは開始できません。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"  以下をクリックしてゲームを中断できます。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"translate":"     >> %s","with":[{"text":"ゲーム中断","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":"クリックしてゲーム中断"},"clickEvent":{"action":"run_command","value":"/function mad:stop"}}],"color":"white","bold":false,"italic":false}]
function mad:system/common/message/end