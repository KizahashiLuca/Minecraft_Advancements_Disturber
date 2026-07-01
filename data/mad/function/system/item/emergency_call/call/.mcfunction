#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ初期化
data remove storage mad: item.emergency_call.tmp

## 緊急招集を発信したプレイヤー取得
#### 配列から緊急招集を発信したプレイヤー(もしくはチーム)をdequeue
data modify storage mad: item.emergency_call.tmp \
  merge from storage mad: item.emergency_call.callers[0]
data remove storage mad: item.emergency_call.callers[0]

## 招集実行
function mad:system/item/emergency_call/call/execute/ \
  with storage mad: item.emergency_call.tmp

## ストレージ削除
data remove storage mad: item.emergency_call.tmp
