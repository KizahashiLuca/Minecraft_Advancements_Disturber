#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 追加時間を付与するプレイヤーを設定
tag @a[predicate=mad:player/alive/,sort=nearest,limit=1] add mad_give_time_randomly

## 追加時間を付与
execute if predicate mad:gamerule/match_mode/individual/ \
  as @a[predicate=mad:player/give_time/] run \
  function mad:system/game/care_package/explode/give_time/individual
execute if predicate mad:gamerule/match_mode/team \
  as @a[predicate=mad:player/give_time/a] run \
  function mad:system/game/care_package/explode/give_time/team \
    with storage mad: team.a
execute if predicate mad:gamerule/match_mode/team \
  as @a[predicate=mad:player/give_time/b] run \
  function mad:system/game/care_package/explode/give_time/team \
    with storage mad: team.b
execute if predicate mad:gamerule/match_mode/team \
  as @a[predicate=mad:player/give_time/c] run \
  function mad:system/game/care_package/explode/give_time/team \
    with storage mad: team.c
execute if predicate mad:gamerule/match_mode/team \
  as @a[predicate=mad:player/give_time/d] run \
  function mad:system/game/care_package/explode/give_time/team \
    with storage mad: team.d

## プレイヤーからタグを削除
tag @a remove mad_give_time_randomly

## 開封時設定
#### 開封した支援物資の番号を取得してストレージに格納
execute store result storage mad: care_package.drop.number int 1 run \
  data get entity @s UUID[0] 1

## アーマースタンド削除
function mad:system/game/care_package/explode/armor_stand \
  with storage mad: care_package.drop

## 同じチャンク内にワールドスポーンのマーカーが無ければ強制読み込み解除
execute unless entity @e[predicate=mad:marker/world_spawn,dx=15,dy=15,dz=15] run \
  forceload remove ~ ~ ~ ~

## 爆破
#### サウンドイベント
playsound minecraft:entity.firework_rocket.twinkle ambient @a
#### パーティクル
particle minecraft:explosion ~ ~ ~ 1 1 1 0.5 10 force @a
#### 自身を削除
kill @s

## 次期支援物資場所決定
function mad:system/game/care_package/explode/next_position \
  with storage mad: care_package.drop
