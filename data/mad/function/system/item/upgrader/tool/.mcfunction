#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0.
#####################################

## スコアボードリセット
scoreboard players set @s UseToolUpgrader 0

## ストレージ初期化
data modify storage mad: item.tool_upgrader.equipment set value {}

## アップグレードアイテム - 無い時
execute as @s[predicate=!mad:system/item/upgrader/tool/mainhand,predicate=!mad:system/item/upgrader/tool/offhand] run function mad:system/item/upgrader/tool/upgradable/none

## アップグレードアイテム - ある時
execute as @s[predicate=mad:system/item/upgrader/tool/mainhand] run function mad:system/item/upgrader/tool/upgradable/ {type:'mainhand',nbt:'SelectedItem'}
execute as @s[predicate=mad:system/item/upgrader/tool/offhand] run function mad:system/item/upgrader/tool/upgradable/ {type:'offhand',nbt:'equipment.offhand'}