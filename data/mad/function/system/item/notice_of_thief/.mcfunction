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
scoreboard players set @s UseNoticeOfThief 0

## ストレージ初期化
data remove storage mad: item.notice_of_thief.tmp

## サウンドイベント
playsound minecraft:entity.allay.death block @a ~ ~ ~ 1.0 1.0 1.0
 
## 怪盗プレイヤーを設定
#### 個人戦 - 自分のプレイヤー番号を保持
execute store result storage mad: item.notice_of_thief.tmp.thief_number int 1.0 run \
  scoreboard players get @s PlayerNumber
#### チーム戦 - 自分のチームのチーム番号を保持
execute as @s[predicate=mad:player/team/a] run \
  data modify storage mad: item.notice_of_thief.tmp.thief_team \
    set value 'a'
execute as @s[predicate=mad:player/team/b] run \
  data modify storage mad: item.notice_of_thief.tmp.thief_team \
    set value 'b'
execute as @s[predicate=mad:player/team/c] run \
  data modify storage mad: item.notice_of_thief.tmp.thief_team \
    set value 'c'
execute as @s[predicate=mad:player/team/d] run \
  data modify storage mad: item.notice_of_thief.tmp.thief_team \
    set value 'd'

## ファイナライズ
#### 怪盗予告をしたプレイヤー(もしくはチーム)を配列にqueue
data modify storage mad: item.notice_of_thief.thieves \
  append from storage mad: item.notice_of_thief.tmp

## メッセージ表示
$function mad:message/item/notice_of_thief/send_notice/$(type) \
  with storage mad: item.notice_of_thief.tmp

## ストレージ削除
data remove storage mad: item.notice_of_thief.tmp

## 関数スケジュール
schedule function mad:system/item/notice_of_thief/steal/ \
  5s append

## マーカーキル
kill @e[predicate=mad:item/notice_of_thief/marker,sort=nearest,limit=1]
