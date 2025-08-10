#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0.
#####################################

## アップグレードアイテム検出
$function mad:system/item/upgrader/tool/storage {type:'$(type)',nbt:'$(nbt)'}

## サウンドイベント
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## アップグレード
function mad:system/item/upgrader/tool/upgrade with storage mad: item.tool_upgrader.equipment.tool
function mad:system/item/upgrader/tool/replace with storage mad: item.tool_upgrader.equipment.tool

## ストレージ削除
data remove storage mad: item.tool_upgrader.equipment

## メッセージ表示
function mad:message/item/upgrader/tool/