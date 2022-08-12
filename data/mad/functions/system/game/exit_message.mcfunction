#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Send messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  勝者が決定しました。","color":"white"}]
tellraw @p[predicate=mad:player/host] ["",{"text":"  ゲームを終了する場合は、","color":"white"}]
tellraw @p[predicate=mad:player/host] ["",{"text":"  ","color":"white"},{"text":"こちら","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":"クリックしてゲーム終了"},"clickEvent":{"action":"run_command","value":"/trigger ExitMessage set 1"}},{"text":"を押してください。","color":"white"}]
function mad:system/common/message/end

## Set scoreboard
scoreboard players set #mad ExitMessage 1