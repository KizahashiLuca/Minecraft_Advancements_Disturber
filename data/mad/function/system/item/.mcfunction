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

## 怪盗予告
execute as @a[predicate=mad:item/notice_of_thief/trigger] \
  at @s run \
  function mad:system/item/notice_of_thief/ \
    with storage mad: rules.match_mode

## 緊急招集
execute as @a[predicate=mad:item/emergency_call/trigger] \
  at @s run function mad:system/item/emergency_call/ \
    with storage mad: rules.match_mode

## 帰還ポータル
execute as @e[predicate=mad:system/item/return_portal/armor_stand] at @s run function mad:system/item/return_portal/

## Maze maker
# execute as @a[predicate=mad:system/item/maze_maker/use] at @s run function mad:system/item/maze_maker/main
# execute as @e[predicate=mad:system/item/maze_maker/maze_marker] at @s run function mad:system/item/maze_maker/make_maze/main

## どっか行け矢(仮)
#execute as @e[predicate=mad:system/item/teleport_arrow/onground_arrow] at @s run function mad:system/item/teleport_arrow/modify_data
# execute as @a[predicate=mad:system/item/teleport_arrow/shot_arrow] at @s run function mad:system/item/teleport_arrow/
