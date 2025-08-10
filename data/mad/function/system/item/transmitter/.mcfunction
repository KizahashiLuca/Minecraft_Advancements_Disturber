#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードリセット
scoreboard players set @s UseTransmitter 0

## ストレージ削除
data remove storage mad: item.transmitter

## サウンドイベント
playsound minecraft:ui.loom.select_pattern block @a ~ ~ ~ 1.0 1.0 1.0

## ストレージ格納
execute if predicate mad:gamerule/match_mode/individual/ run function mad:system/item/transmitter/detect_player/individual
execute if predicate mad:gamerule/match_mode/team as @s[predicate=mad:player/alive/a] run function mad:system/item/transmitter/detect_player/team with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team as @s[predicate=mad:player/alive/b] run function mad:system/item/transmitter/detect_player/team with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team as @s[predicate=mad:player/alive/c] run function mad:system/item/transmitter/detect_player/team with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team as @s[predicate=mad:player/alive/d] run function mad:system/item/transmitter/detect_player/team with storage mad: team.d

## 座標算出
execute if data storage mad: item.transmitter.player_number run function mad:system/item/transmitter/get_coordinates with storage mad: item.transmitter

## メッセージ表示
execute if data storage mad: item.transmitter.player_number run function mad:message/item/transmitter/exist with storage mad: item.transmitter
execute unless data storage mad: item.transmitter.player_number run function mad:message/item/transmitter/not_exist

## ストレージ削除
data remove storage mad: item.transmitter