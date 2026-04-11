#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 難易度
$difficulty $(difficulty)

## 時刻
time set noon

## 天気
weather clear

## ストレージ 削除
data remove storage mad: display_team_member
data remove storage mad: death

## エンティティ
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:interaction]
kill @e[type=minecraft:text_display,tag=MAD_TextDisplay_Setting_ChangeSpectator]
kill @e[type=minecraft:chest_minecart,tag=MAD_CarePackage]
kill @e[predicate=mad:system/item/return_portal/armor_stand]
kill @e[predicate=mad:system/item/maze_maker/monster_egg]
kill @e[type=minecraft:armor_stand,tag=MAD_MinecartItem]

## エンドゲートウェイ削除
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] positioned ~ ~1 ~6.45 run setblock ~ ~3.0 ~-12.40 minecraft:air

## ワールド範囲
#### オーバーワールド
execute in minecraft:overworld run function mad:system/wait/initialize/world/world_border with storage mad: world_spawn.overworld
#### ネザー
execute in minecraft:the_nether run function mad:system/wait/initialize/world/world_border with storage mad: world_spawn.the_nether
#### エンド
execute in minecraft:the_end run function mad:system/wait/initialize/world/world_border with storage mad: world_spawn.the_end