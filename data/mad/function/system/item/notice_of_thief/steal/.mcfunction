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
data modify storage mad: item.notice_of_thief.tmp \
  set value \
    {\
      victim_number: -1,\
    }

## 怪盗プレイヤー取得
#### 配列から怪盗予告したプレイヤー(もしくはチーム)をdequeue
data modify storage mad: item.notice_of_thief.tmp \
  merge from storage mad: item.notice_of_thief.thieves[0]
data remove storage mad: item.notice_of_thief.thieves[0]
 
## アイテムを盗まれるプレイヤーを決定
function mad:system/item/notice_of_thief/steal/decide_player \
  with storage mad: item.notice_of_thief.tmp
 
## 盗むアイテム決定
function mad:system/item/notice_of_thief/steal/decide_item \
  with storage mad: item.notice_of_thief.tmp

## 怪盗実行
function mad:system/item/notice_of_thief/steal/execute/ \
  with storage mad: item.notice_of_thief.tmp

## ストレージ削除
data remove storage mad: item.notice_of_thief.tmp
