#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 盗むアイテム候補検出
#### ストレージ初期化
data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  set value []
#### インベントリの各スロットにアイテムがあるかを確認して、あればストレージに格納
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 0b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 1b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 2b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 3b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 4b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 5b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 6b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 7b,\
      }\
    ]
$data modify storage mad: item.notice_of_thief.tmp.item_candidate \
  append from entity @p[tag=mad_player$(victim_number)] Inventory\
    [\
      {\
        Slot: 8b,\
      }\
    ]

## 盗むアイテム候補数抽出
#### ストレージの配列から長さを取得
$execute store result score @p[tag=mad_player$(thief_number)] NumberOfItemCandidates run \
  data get storage mad: item.notice_of_thief.tmp.item_candidate
#### 配列の長さから1減算
$scoreboard players remove @p[tag=mad_player$(thief_number)] NumberOfItemCandidates 1
#### 1減算した配列の長さをストレージに格納
$execute store result storage mad: item.notice_of_thief.tmp.number_of_item_candidates int 1.0 run \
  scoreboard players get @p[tag=mad_player$(thief_number)] NumberOfItemCandidates

## 盗むアイテムのインデックス抽出
#### 配列の長さが0以上の場合、怪盗可能なので、
#### 0から1減算した配列の長さの範囲ランダムの値を取得
$execute if score @p[tag=mad_player$(thief_number)] NumberOfItemCandidates matches 0.. \
  store result storage mad: item.notice_of_thief.tmp.index int 1.0 run \
  function mad:system/item/notice_of_thief/steal/get_random_value \
    with storage mad: item.notice_of_thief.tmp

## 盗むアイテム情報抽出
#### 配列の長さが0以上の場合、怪盗可能なので、
#### 盗むアイテムのインデックスからインベントリのアイテム情報を取得
$execute if score @p[tag=mad_player$(thief_number)] NumberOfItemCandidates matches 0.. run \
  function mad:system/item/notice_of_thief/steal/get_item \
    with storage mad: item.notice_of_thief.tmp
