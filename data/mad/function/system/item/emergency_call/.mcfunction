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
scoreboard players set @s UseEmergencyCall 0

## ストレージ初期化
data remove storage mad: item.emergency_call.tmp

## サウンドイベント
playsound minecraft:entity.zombie_horse.death block @a ~ ~ ~ 1.0 1.0 1.0

## 緊急招集発信プレイヤーを設定
#### 緊急招集を発信したプレイヤー番号を保持
execute store result storage mad: item.emergency_call.tmp.caller_number int 1.0 run \
  scoreboard players get @s PlayerNumber
#### チーム戦 - 自分のチームのチーム番号を保持
execute as @s[predicate=mad:player/team/a] run \
  data modify storage mad: item.emergency_call.tmp.caller_team \
    set value 'a'
execute as @s[predicate=mad:player/team/b] run \
  data modify storage mad: item.emergency_call.tmp.caller_team \
    set value 'b'
execute as @s[predicate=mad:player/team/c] run \
  data modify storage mad: item.emergency_call.tmp.caller_team \
    set value 'c'
execute as @s[predicate=mad:player/team/d] run \
  data modify storage mad: item.emergency_call.tmp.caller_team \
    set value 'd'

## ファイナライズ
#### 緊急招集を発信したプレイヤー(もしくはチーム)を配列にqueue
data modify storage mad: item.emergency_call.callers \
  append from storage mad: item.emergency_call.tmp

## メッセージ表示
$function mad:message/item/emergency_call/send_call/$(type) \
  with storage mad: item.emergency_call.tmp

## ストレージ削除
data remove storage mad: item.emergency_call.tmp

## 関数スケジュール
schedule function mad:system/item/emergency_call/call/ \
  5s append

## マーカーキル
kill @e[predicate=mad:item/emergency_call/marker,sort=nearest,limit=1]
