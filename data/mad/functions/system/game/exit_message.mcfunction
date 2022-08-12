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
tellraw @a[predicate=mad:gamerules/match_mode/team] ["",{"text":"[試合終了] 勝者が決定しました。","color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/match_mode/individual/not_one] ["",{"text":"[試合終了] 勝者が決定しました。","color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/match_mode/individual/one] ["",{"text":"[試合終了] プレイヤーが死亡しました。","color":"green","bold":false,"italic":false}]
tellraw @p[predicate=mad:player/host] ["",{"text":"  ゲームを終了する場合は、","color":"green","bold":false,"italic":false}]
tellraw @p[predicate=mad:player/host] ["",{"translate":"  %sを押してください。","with":[{"text":"こちら","color":"light_purple","bold":true,"hoverEvent":{"action":"show_text","value":"クリックしてゲーム終了"},"clickEvent":{"action":"run_command","value":"/trigger ExitMessage set 1"}}],"color":"green","bold":false,"italic":false}]

## Set scoreboard
scoreboard players set #mad ExitMessage 1