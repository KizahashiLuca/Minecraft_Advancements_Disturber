#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 使用トリガーリセット
scoreboard players set @s UseTransmitter 0

## ストレージ削除
data remove storage mad: item.transmitter

## サウンドイベント
playsound minecraft:ui.loom.select_pattern block @s

## プレイヤーを設定
#### 個人戦 - 一番近くの生存者のプレイヤー番号を保持
execute if predicate mad:gamerule/match_mode/individual/ run \
  function mad:system/item/transmitter/detect_player/individual
#### チーム戦 - 一番近くの他チームの生存者のプレイヤー番号を保持
execute if predicate mad:gamerule/match_mode/team \
  as @s[predicate=mad:player/alive/a] run \
  function mad:system/item/transmitter/detect_player/team \
    with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team \
  as @s[predicate=mad:player/alive/b] run \
  function mad:system/item/transmitter/detect_player/team \
    with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team \
  as @s[predicate=mad:player/alive/c] run \
  function mad:system/item/transmitter/detect_player/team \
    with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team \
  as @s[predicate=mad:player/alive/d] run \
  function mad:system/item/transmitter/detect_player/team \
    with storage mad: team.d

## プレイヤー番号があれば座標取得
execute if data storage mad: item.transmitter.player_number run \
  function mad:system/item/transmitter/get_coordinates \
    with storage mad: item.transmitter

## メッセージ表示
execute if data storage mad: item.transmitter.player_number run \
  function mad:message/item/transmitter/exist \
    with storage mad: item.transmitter
execute unless data storage mad: item.transmitter.player_number run \
  function mad:message/item/transmitter/not_exist

## ストレージ削除
data remove storage mad: item.transmitter

## マーカーキル
kill @e[predicate=mad:item/transmitter/marker,sort=nearest,limit=1]
