#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  勝者が決定しました。","color":"white"}]
tellraw @p[tag=Host] ["",{"text":"  ゲームを終了する場合は、","color":"white"}]
tellraw @p[tag=Host] ["",{"text":"  ","color":"white"},{"text":"こちら","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":"クリックしてゲーム終了"},"clickEvent":{"action":"run_command","value":"/trigger ExitMessage set 1"}},{"text":"を押してください。","color":"white"}]
function mad:system/finish/message_common_end

## Set scoreboard
scoreboard players set #mad ExitMessage 1