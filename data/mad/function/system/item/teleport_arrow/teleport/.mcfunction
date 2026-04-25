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
data modify storage mad: item.teleport_arrow.tmp \
  set value \
    {\
      teleportee_number: -1,\
    }

## テレポートするプレイヤー取得
#### 配列からテレポートするプレイヤー(もしくはチーム)をdequeue
data modify storage mad: item.teleport_arrow.tmp \
  merge from storage mad: item.teleport_arrow.teleportees[0]
data remove storage mad: item.teleport_arrow.teleportees[0]

## テレポート先設定
function mad:system/item/teleport_arrow/teleport/decide_position \
  with storage mad: rules.world_size
 
## テレポート実行
function mad:system/item/teleport_arrow/teleport/execute/ \
  with storage mad: item.teleport_arrow.tmp

## ストレージ削除
data remove storage mad: item.teleport_arrow.tmp
