#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Send messages
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft","color":"red","bold":true}]
tellraw @a ["",{"text":"  Advancements","color":"red","bold":true}]
tellraw @a ["",{"text":"   Disturber β-1.2.2","color":"red","bold":true}]
tellraw @a ["",{"text":"  企画 : ","color":"green","bold":true},{"text":"ぽたーじゅ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @potage00"},"clickEvent":{"action":"open_url","value":"http://twitter.com/potage00"}}]
tellraw @a ["",{"text":"  制作 : ","color":"green","bold":true},{"text":"KizahashiLuca","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"Twitter @KizahashiLuca"},"clickEvent":{"action":"open_url","value":"http://twitter.com/KizahashiLuca"}}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  勝者が決定しました。","color":"white"}]
tellraw @p[tag=Host] ["",{"text":"  ゲームを終了する場合は、","color":"white"}]
tellraw @p[tag=Host] ["",{"text":"  ","color":"white"},{"text":"こちら","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":"クリックしてゲーム終了"},"clickEvent":{"action":"run_command","value":"/trigger ExitMessage set 1"}},{"text":"を押してください。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Set scoreboard
scoreboard players set #mad ExitMessage 1