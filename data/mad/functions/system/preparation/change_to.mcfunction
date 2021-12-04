#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Revoke advancements
advancement revoke @a everything

## Send title messages
title @a title ["",{"text":"降下開始","color":"white"}]
title @a times 20 80 20

## Send setting messages
function mad:system/finish/message_common_begin
tellraw @a ["",{"text":"  降下を開始します。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
execute as @e[predicate=mad:ongame/entity/world_spawn,limit=1] at @s run tellraw @a ["",{"text":"  中心座標 : ","color":"white"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PosX"}},{"score":{"name":"@s","objective":"PosY"}},{"score":{"name":"@s","objective":"PosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"スペクテイター時\nクリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportCenter set 1"}}]
tellraw @a ["",{"text":"  初期生存時間 : ","color":"white"},{"score":{"name":"#mad","objective":"TimeLimit"},"color":"green"},{"text":"秒","color":"green"}]
tellraw @a ["",{"text":"  追加生存時間 : ","color":"white"},{"score":{"name":"#mad","objective":"AddingTime"},"color":"green"},{"text":"秒","color":"green"}]
tellraw @a ["",{"text":"  支援物資投下間隔 : ","color":"white"},{"score":{"name":"#mad","objective":"CartInterval"},"color":"green"},{"text":"秒","color":"green"}]
execute unless score #mad WorldBorder matches 0 run tellraw @a ["",{"text":"  ワールドボーダー範囲 : ","color":"white"},{"score":{"name":"#mad","objective":"WorldBorder"},"color":"green"},{"text":"×","color":"green"},{"score":{"name":"#mad","objective":"WorldBorder"},"color":"green"}]
execute if score #mad WorldBorder matches 0 run tellraw @a ["",{"text":"  ワールドボーダー範囲 : ","color":"white"},{"text":"制限なし","color":"green"}]
execute if score #mad IsTeam matches 1 run tellraw @a ["",{"text":"  リスポーンビーコン数 : ","color":"white"},{"score":{"name":"#mad","objective":"BeaconNumber"},"color":"green"},{"text":"つ","color":"green"}]
function mad:system/finish/message_common_end

## Reset respawn beacon #1
execute as @e[predicate=mad:ongame/respawn_beacon/structure,scores={BeaconNumber=1}] at @s run fill ~-1 ~4 ~-1 ~1 ~6 ~1 minecraft:air

## Teleport
execute if score #mad IsTeam matches 0 at @e[predicate=mad:ongame/entity/world_spawn,limit=1] run function mad:system/preparation/random_teleport_individual
execute if score #mad IsTeam matches 1 at @e[predicate=mad:ongame/entity/world_spawn,limit=1] run function mad:system/preparation/random_teleport_team
execute as @a[tag=Participant] at @s run tp @s ~ 160 ~

## Set time
time set noon

## Set scoreboards
scoreboard players set #mad Tick 0
scoreboard players set #mad Second 0

## Change phase
scoreboard players set #mad Phase 20