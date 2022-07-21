#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set game
function mad:system/fall/set_game/main

## Send title messages
title @a title ["",{"text":"降下開始","color":"white"}]
title @a times 20 80 20

## Send setting messages
function mad:system/common/message/begin
tellraw @a ["",{"text":"  降下を開始します。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
execute as @e[predicate=mad:marker/world_spawn,limit=1] at @s run tellraw @a ["",{"text":"  中 心 座 標  : ","color":"white","bold":false,"italic":false},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","bold":false,"italic":false,"hoverEvent":{"action":"show_text","value":"スペクテイター時\nクリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportCenter set 1"}}]
tellraw @a ["",{"text":"  初期生存時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"TimeLimit"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  追加生存時間 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"AddingTime"}}],"color":"green","bold":false,"italic":false}]
tellraw @a ["",{"text":"  物資投下間隔 : ","color":"white","bold":false,"italic":false},{"translate":"%s 秒","with":[{"score":{"name":"#mad","objective":"CartInterval"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/world_border/unlimited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"text":"制限なし","color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/world_border/limited] ["",{"text":"  ワールド範囲 : ","color":"white","bold":false,"italic":false},{"translate":"%s x %s","with":[{"score":{"name":"#mad","objective":"WorldBorder"}},{"score":{"name":"#mad","objective":"WorldBorder"}}],"color":"green","bold":false,"italic":false}]
tellraw @a[predicate=mad:gamerules/match_mode/team] ["",{"text":"  リスポーンビーコン : ","color":"white","bold":false,"italic":false},{"translate":"%sヶ所","with":[{"score":{"name":"#mad","objective":"NumberOfBeacons"}}],"color":"green","bold":false,"italic":false}]
function mad:system/common/message/end

## Reset respawn beacon #1
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/center_of_world_position] at @s run fill ~-1 ~5 ~-1 ~1 ~7 ~1 minecraft:air

## Teleport
execute if predicate mad:gamerules/match_mode/individual at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/fall/random_teleport_individual
execute if predicate mad:gamerules/match_mode/team at @e[predicate=mad:marker/world_spawn,limit=1] run function mad:system/fall/random_teleport_team
execute as @a[predicate=mad:player/participant] at @s run tp @s ~ 320 ~

## Change phase
scoreboard players set #mad Phase 20