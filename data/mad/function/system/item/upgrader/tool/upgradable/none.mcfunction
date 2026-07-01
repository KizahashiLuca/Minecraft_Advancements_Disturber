#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0.
#####################################

## 道具アップグレード 返却
loot give @s loot mad:care_package/items/upgrader/tool

## サウンドイベント
playsound minecraft:block.anvil.fall block @s ~ ~ ~ 1.0 1.0 1.0

## ストレージ削除
data remove storage mad: item.tool_upgrader.equipment

## メッセージ表示
function mad:message/item/upgrader/tool/none
