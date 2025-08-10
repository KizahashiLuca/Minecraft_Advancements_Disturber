#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0.
#####################################

## 道具アップグレード 再配布
loot give @s loot mad:care_package/items/upgrader/tool_upgrader

## サウンドイベント
playsound minecraft:block.anvil.fall block @s ~ ~ ~ 1.0 1.0 1.0

## ストレージ削除
data remove storage mad: item.tool_upgrader.equipment

## メッセージ表示
function mad:message/item/upgrader/tool/none