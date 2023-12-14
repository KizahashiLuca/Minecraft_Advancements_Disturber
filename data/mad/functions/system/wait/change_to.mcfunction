#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set game
function mad:system/wait/set_game/main

## Send title messages
title @a title ["",{"text":"準備フェーズ開始","color":"white","bold":false,"italic":false}]
title @a subtitle [""]
title @a times 20 80 20

## Send setting messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  準備を開始します。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"---------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"  中心座標 : ","color":"white","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"#mad","objective":"PosX"}},{"score":{"name":"#mad","objective":"PosY"}},{"score":{"name":"#mad","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportCenter set 1"},"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  初期生存時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"TimeLimit"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  追加生存時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"AddingTime"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  物資投下間隔 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"CartInterval"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/world_border/unlimited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"text":"制限なし","color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/world_border/limited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"translate":"%s x %s","with":[{"score":{"name":"#mad","objective":"WorldBorder"}},{"score":{"name":"#mad","objective":"WorldBorder"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/match_mode/team] ["",{"text":"  リスポーンビーコン : ","color":"white","bold":false,"italic":false},{"translate":"%sヶ所","with":[{"score":{"name":"#mad","objective":"NumberOfBeacons"}}],"color":"green","bold":false,"italic":false}]
function mad:system/wait/tell_member
function mad:system/common/message/end

## Change phase
scoreboard players set #mad Phase 19