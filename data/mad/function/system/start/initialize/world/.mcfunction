#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 難易度
difficulty peaceful

## 時刻
time set noon

## 天気
weather clear

## ストレージ 削除
data remove storage mad: world_spawn
data remove storage mad: respawn_beacon
data remove storage mad: display_team_member
data remove storage mad: care_package
data remove storage mad: death

## エンティティ
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:marker]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:chest_minecart,tag=MAD_CarePackage]
kill @e[predicate=mad:system/item/return_portal/armor_stand]
kill @e[predicate=mad:system/item/maze_maker/monster_egg]
kill @e[type=minecraft:armor_stand,tag=MAD_MinecartItem]

## 強制ロード領域
forceload remove all
execute at @p[predicate=mad:player/host] run forceload add ~ ~

## ワールドスポーン
execute at @p[predicate=mad:player/host] align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:['MAD_WorldSpawn'],NoGravity:1b,Invulnerable:1b}
execute store result score #mad PosX run data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[0] 1.0
execute store result score #mad PosY run data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[1] 1.0
execute store result score #mad PosZ run data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[2] 1.0

## ポジション表示
data modify storage mad: position.0 set value '南'
data modify storage mad: position.1 set value '南西'
data modify storage mad: position.2 set value '西'
data modify storage mad: position.3 set value '北西'
data modify storage mad: position.4 set value '北'
data modify storage mad: position.5 set value '北東'
data modify storage mad: position.6 set value '東'
data modify storage mad: position.7 set value '南東'

## ワールド範囲
#### オーバーワールド
data modify storage mad: world_spawn.overworld.dimension set value 'overworld'
execute store result storage mad: world_spawn.overworld.x int 1 run scoreboard players get #mad PosX
execute store result storage mad: world_spawn.overworld.y int 1 run scoreboard players get #mad PosY
execute store result storage mad: world_spawn.overworld.z int 1 run scoreboard players get #mad PosZ
execute in minecraft:overworld run function mad:system/start/initialize/world/world_border with storage mad: world_spawn.overworld
#### ネザー
data modify storage mad: world_spawn.the_nether.dimension set value 'the_nether'
execute store result storage mad: world_spawn.the_nether.x int 0.125 run scoreboard players get #mad PosX
execute store result storage mad: world_spawn.the_nether.y int 1 run scoreboard players get #mad PosY
execute store result storage mad: world_spawn.the_nether.z int 0.125 run scoreboard players get #mad PosZ
execute in minecraft:the_nether run function mad:system/start/initialize/world/world_border with storage mad: world_spawn.the_nether
#### エンド
data modify storage mad: world_spawn.the_end.dimension set value 'the_end'
execute store result storage mad: world_spawn.the_end.x int 1 run scoreboard players get #mad PosX
execute store result storage mad: world_spawn.the_end.y int 1 run scoreboard players get #mad PosY
execute store result storage mad: world_spawn.the_end.z int 1 run scoreboard players get #mad PosZ
execute in minecraft:the_end run function mad:system/start/initialize/world/world_border with storage mad: world_spawn.the_end

## リスポーンビーコン設置
execute at @e[predicate=mad:marker/world_spawn,limit=1] run summon minecraft:marker ~ 300 ~ {Tags:['MAD_RespawnBeacon'],NoGravity:1b,Invulnerable:1b}
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run place template mad:respawn_beacon ~-8 ~-3 ~-8
execute store result storage mad: respawn_beacon.x int 1 run data get entity @e[predicate=mad:marker/respawn_beacon,limit=1] Pos[0]
execute store result storage mad: respawn_beacon.y int 1 run data get entity @e[predicate=mad:marker/respawn_beacon,limit=1] Pos[1]
execute store result storage mad: respawn_beacon.z int 1 run data get entity @e[predicate=mad:marker/respawn_beacon,limit=1] Pos[2]

## 全員移動
tp @a @e[predicate=mad:marker/respawn_beacon,limit=1]