#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 04 Dec 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set game
function mad:system/fall/set_game/main

## Send title messages
title @a title ["",{"text":"降下開始","color":"white","bold":false,"italic":false}]
title @a subtitle [""]
title @a times 20 80 20

## Send setting messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  降下を開始します。","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"---------------------------------","color":"white","bold":false,"italic":false}]
tellraw @a ["",{"text":"  中心座標 : ","color":"white","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"#mad","objective":"PosX"}},{"score":{"name":"#mad","objective":"PosY"}},{"score":{"name":"#mad","objective":"PosZ"}}],"hoverEvent":{"action":"show_text","contents":{"text":"スペクテイター時、\nクリックでテレポート","color":"white","bold":false,"italic":false}},"clickEvent":{"action":"run_command","value":"/trigger TeleportCenter set 1"},"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  初期生存時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"TimeLimit"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  追加生存時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"AddingTime"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  物資投下間隔 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"CartInterval"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/world_border/unlimited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"text":"制限なし","color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/world_border/limited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"translate":"%s x %s","with":[{"score":{"name":"#mad","objective":"WorldBorder"}},{"score":{"name":"#mad","objective":"WorldBorder"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/match_mode/team] ["",{"text":"  リスポーンビーコン : ","color":"white","bold":false,"italic":false},{"translate":"%sヶ所","with":[{"score":{"name":"#mad","objective":"NumberOfBeacons"}}],"color":"green","bold":false,"italic":false}]
function mad:system/common/message/end

## Reset respawn beacon #1
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/center_of_world_position] at @s run fill ~-1 ~3 ~-1 ~1 ~5 ~1 minecraft:air

## Teleport
execute if predicate mad:gamerules/match_mode/individual at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/fall/random_teleport/individual/main
execute if predicate mad:gamerules/match_mode/team at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/fall/random_teleport/team/main
execute as @a[predicate=mad:player/participant] at @s run tp @s ~ 320 ~

## Change phase
scoreboard players set #mad Phase 20