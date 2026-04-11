#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 盗むアイテム候補検出
data modify storage mad: item.notice_of_thief.tmp.item_candidate set value []
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:0b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:1b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:2b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:3b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:4b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:5b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:6b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:7b}]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate append from entity @p[tag=MAD_Player$(victim_number)] Inventory[{Slot:8b}]

## 盗むアイテム候補数抽出
$execute store result score @p[tag=MAD_Player$(thief_number)] NumberOfItemCandidates run data get storage mad: item.notice_of_thief.tmp.item_candidate
$scoreboard players remove @p[tag=MAD_Player$(thief_number)] NumberOfItemCandidates 1
$execute store result storage mad: item.notice_of_thief.tmp.number_of_item_candidates int 1.0 run scoreboard players get @p[tag=MAD_Player$(thief_number)] NumberOfItemCandidates

## 盗むアイテムのインデックス抽出
$execute if score @p[tag=MAD_Player$(thief_number)] NumberOfItemCandidates matches 0.. store result storage mad: item.notice_of_thief.tmp.index int 1.0 run function mad:system/item/notice_of_thief/steal/get_random_value with storage mad: item.notice_of_thief.tmp

## 盗むアイテム情報抽出
$execute if score @p[tag=MAD_Player$(thief_number)] NumberOfItemCandidates matches 0.. run function mad:system/item/notice_of_thief/steal/get_item with storage mad: item.notice_of_thief.tmp