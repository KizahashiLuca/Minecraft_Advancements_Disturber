#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ初期化
data modify storage mad: item.notice_of_thief.tmp set value {victim_number:-1}

## ストレージ取得 - FIFO 怪盗予告発信者プレイヤー番号
data modify storage mad: item.notice_of_thief.tmp merge from storage mad: item.notice_of_thief.thieves[0]

## ストレージ削除 - DEQUEUE
data remove storage mad: item.notice_of_thief.thieves[0]
 
## 犠牲者決定
function mad:system/item/notice_of_thief/steal/decide_player with storage mad: item.notice_of_thief.tmp
 
## 盗むアイテム決定
function mad:system/item/notice_of_thief/steal/decide_item with storage mad: item.notice_of_thief.tmp

## 怪盗実行
function mad:system/item/notice_of_thief/steal/execute/ with storage mad: item.notice_of_thief.tmp

## ストレージ削除
data remove storage mad: item.notice_of_thief.tmp