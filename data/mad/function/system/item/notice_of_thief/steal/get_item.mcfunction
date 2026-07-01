#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## アイテム特定
#### ストレージ初期化
data modify storage mad: item.notice_of_thief.tmp.components \
  set value {}
#### アイテムのスロット
$data modify storage mad: item.notice_of_thief.tmp.Slot \
  set from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].Slot
#### アイテムID
$data modify storage mad: item.notice_of_thief.tmp.id \
  set from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].id
#### アイテムの個数
$data modify storage mad: item.notice_of_thief.tmp.count \
  set from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].count
#### アイテムの補足情報
$data modify storage mad: item.notice_of_thief.tmp.components \
  merge from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].components
