#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
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