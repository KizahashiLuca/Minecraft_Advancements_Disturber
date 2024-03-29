#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Change gamerules always
gamerule maxCommandChainLength 65536
gamerule maxCommandForkCount 65536

## Count players
execute unless predicate mad:phase/in_game run function mad:system/begin/start_game/count_players

## Send Title Message
function mad:system/common/message/begin
tellraw @a ["",{"text":"  Thank you for Downloading!","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=!mad:phase/in_game] ["",{"text":"---------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=!mad:phase/in_game] ["",{"translate":"  ゲームの必要人数は %s 人までです。","with":[{"text":"20","color":"red","bold":true}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=!mad:phase/in_game] ["",{"translate":"  以下をクリックしてゲームを開始できます。","color":"white","bold":false,"italic":false}]
tellraw @a[predicate=!mad:phase/in_game,predicate=mad:gamerules/num_of_participants/one] ["",{"translate":"     >> %s","with":[{"text":"ソロ戦","color":"green","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":"クリックしてソロ戦開始"},"clickEvent":{"action":"run_command","value":"/function mad:system/begin/start_game/solo/main"}}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=!mad:phase/in_game,predicate=mad:gamerules/num_of_participants/not_one] ["",{"translate":"     >> %s","with":[{"text":"個人戦","color":"green","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":"クリックして個人戦開始"},"clickEvent":{"action":"run_command","value":"/function mad:system/begin/start_game/individual/main"}}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=!mad:phase/in_game,predicate=mad:gamerules/num_of_participants/not_one] ["",{"translate":"     >> %s","with":[{"text":"チーム戦","color":"green","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":"クリックして2チーム戦開始"},"clickEvent":{"action":"run_command","value":"/function mad:system/begin/start_game/team/main"}}],"color":"white","bold":false,"italic":false}]
tellraw @a[predicate=!mad:phase/in_game] ["",{"translate":"     ※ 詳細設定してのゲーム開始は %s","with":[{"text":"こちら","color":"light_purple","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","value":"クリックして詳細設定開始"},"clickEvent":{"action":"run_command","value":"/function mad:system/begin/start_game/details/main"}}],"color":"white","bold":false,"italic":false}]
function mad:system/common/message/end

## Remove a tag
tag @a[predicate=!mad:phase/in_game] remove MAD_Participant

## Remove scoreboard
execute unless predicate mad:phase/in_game run scoreboard objectives remove NumOfParticipants