#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Send reject messages
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft","color":"red","bold":true}]
tellraw @a ["",{"text":"  Advancements","color":"red","bold":true}]
tellraw @a ["",{"text":"   Disturber β-1.2.1","color":"red","bold":true}]
tellraw @a ["",{"text":"  企画 : ","color":"green","bold":true},{"text":"ぽたーじゅ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @potage00"},"clickEvent":{"action":"open_url","value":"http://twitter.com/potage00"}}]
tellraw @a ["",{"text":"  制作 : ","color":"green","bold":true},{"text":"KizahashiLuca","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @KizahashiLuca"},"clickEvent":{"action":"open_url","value":"http://twitter.com/KizahashiLuca"}}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  既にゲームを行っています。","color":"white"}]
tellraw @a ["",{"text":"  新しいゲームは開始できません。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを中断して","color":"white"}]
tellraw @a ["",{"text":"  ください。","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mad:stop","color":"light_purple","hoverEvent":{"action":"show_text","value":"クリックしてゲーム中断"},"clickEvent":{"action":"suggest_command","value":"/function #mad:stop"}}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]