#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## アイテム特定
data modify storage mad: item.notice_of_thief.tmp.components set value {}
$data modify storage mad: item.notice_of_thief.tmp.Slot set from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].Slot
$data modify storage mad: item.notice_of_thief.tmp.id set from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].id
$data modify storage mad: item.notice_of_thief.tmp.count set from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].count
$data modify storage mad: item.notice_of_thief.tmp.components merge from storage mad: item.notice_of_thief.tmp.item_candidate[$(index)].components