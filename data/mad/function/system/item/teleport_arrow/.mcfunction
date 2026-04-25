#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ初期化
data remove storage mad: item.teleport_arrow.tmp

## サウンドイベント
playsound minecraft:block.portal.trigger block @a ~ ~ ~ 1.0 1.0 1.0

## パーティクル
execute at @s run \
  particle minecraft:portal ~3 ~2 ~ 0.1 0.1 0.1 5 300 normal @a
 
## テレポートするプレイヤーを設定
#### テレポートするプレイヤー番号を保持
execute store result storage mad: item.teleport_arrow.tmp.teleportee_number int 1.0 run \
  scoreboard players get @s PlayerNumber

## ファイナライズ
#### テレポートするプレイヤー(もしくはチーム)を配列にqueue
data modify storage mad: item.teleport_arrow.teleportees \
  append from storage mad: item.teleport_arrow.tmp

## メッセージ表示
function mad:message/item/teleport_arrow/send_notice/ \
  with storage mad: item.teleport_arrow.tmp

## ストレージ削除
data remove storage mad: item.teleport_arrow.tmp

## 関数スケジュール
schedule function mad:system/item/teleport_arrow/teleport/ \
  5s append

## 撃たれたことを検知して不運効果を削除
effect clear @s minecraft:unluck
