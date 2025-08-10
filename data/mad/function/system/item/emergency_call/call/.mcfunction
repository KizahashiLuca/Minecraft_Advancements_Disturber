#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ取得 - FIFO 緊急招集発信者プレイヤー番号
data modify storage mad: item.emergency_call.tmp.caller_number set from storage mad: item.emergency_call.callers[0]

## ストレージ削除 - DEQUEUE
data remove storage mad: item.emergency_call.callers[0]
 
## テレポートされるチーム決定
execute if predicate mad:gamerule/match_mode/individual/ run function mad:system/item/emergency_call/call/individual with storage mad: item.emergency_call.tmp
execute if predicate mad:gamerule/match_mode/team run function mad:system/item/emergency_call/call/team with storage mad: item.emergency_call.tmp

## 招集実行
function mad:system/item/emergency_call/call/teleport/ with storage mad: item.emergency_call.tmp

## ストレージ削除
data remove storage mad: item.emergency_call.tmp