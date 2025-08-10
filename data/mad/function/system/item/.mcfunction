#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 支援物資アイテム - 発信機
execute as @a[predicate=mad:system/item/transmitter/] at @s run function mad:system/item/transmitter/

## 防具アップグレード
execute as @a[predicate=mad:system/item/upgrader/armor/] at @s run function mad:system/item/upgrader/armor/

## ツールアップグレード
execute as @a[predicate=mad:system/item/upgrader/tool/] at @s run function mad:system/item/upgrader/tool/

## 怪盗予告
execute as @a[predicate=mad:system/item/notice_of_thief/] at @s run function mad:system/item/notice_of_thief/ with storage mad: gamerule.match_mode

## 緊急招集
execute as @a[predicate=mad:system/item/emergency_call/] at @s run function mad:system/item/emergency_call/ with storage mad: gamerule.match_mode

## ウォーデンの牙の杖
execute as @a[predicate=mad:system/item/warden_fangs_wand/] at @s run function mad:system/item/warden_fangs_wand/

## Return portal
execute as @e[predicate=mad:system/item/return_portal/armor_stand] at @s run function mad:system/item/return_portal/

## Maze maker
execute as @a[predicate=mad:system/item/maze_maker/use] at @s run function mad:system/item/maze_maker/main
execute as @e[predicate=mad:system/item/maze_maker/maze_marker] at @s run function mad:system/item/maze_maker/make_maze/main

## Teleport arrow
#execute as @e[predicate=mad:system/item/teleport_arrow/onground_arrow] at @s run function mad:system/item/teleport_arrow/modify_data
execute as @a[predicate=mad:system/item/teleport_arrow/teleportee] at @s run function mad:system/item/teleport_arrow/main
