#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資アイテム - 発信機
execute as @a[predicate=mad:item/transmitter/trigger] \
  at @s run \
  function mad:system/item/transmitter/

## 支援物資アイテム - 防具アップグレード
execute as @a[predicate=mad:item/upgrader/armor/trigger] \
  at @s run \
  function mad:system/item/upgrader/armor/

## 支援物資アイテム - ツールアップグレード
execute as @a[predicate=mad:item/upgrader/tool/trigger] \
  at @s run \
  function mad:system/item/upgrader/tool/

## 支援物資アイテム - 怪盗予告
execute as @a[predicate=mad:item/notice_of_thief/trigger] \
  at @s run \
  function mad:system/item/notice_of_thief/ \
    with storage mad: rules.match_mode

## 支援物資アイテム - 緊急招集
execute as @a[predicate=mad:item/emergency_call/trigger] \
  at @s run \
  function mad:system/item/emergency_call/ \
    with storage mad: rules.match_mode

## 支援物資アイテム - 帰還ポータル
execute as @e[predicate=mad:item/return_portal/armor_stand] \
  at @s run \
  function mad:system/item/return_portal/

## 支援物資アイテム - どっか行け矢
#### 矢の拾得ができないように設定
execute as @e[predicate=mad:item/teleport_arrow/onground_arrow] \
  at @s run \
  function mad:system/item/teleport_arrow/modify_data
#### 矢に当たった際の処理
execute as @a[predicate=mad:item/teleport_arrow/shot_arrow] \
  at @s run \
  function mad:system/item/teleport_arrow/
