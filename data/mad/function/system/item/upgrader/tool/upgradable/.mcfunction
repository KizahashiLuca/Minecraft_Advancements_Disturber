#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0.
#####################################

## アップグレードアイテム検出
$function mad:system/item/upgrader/tool/storage \
  {\
    type: '$(type)',\
    nbt: '$(nbt)',\
  }

## サウンドイベント
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## アップグレード
#### 道具をアップグレードしてストレージに格納
function mad:system/item/upgrader/tool/upgrade \
  with storage mad: item.tool_upgrader.equipment.tool
#### プレイヤーのハンドをアップグレードした道具に置換
function mad:system/item/upgrader/tool/replace \
  with storage mad: item.tool_upgrader.equipment.tool

## メッセージ表示
function mad:message/item/upgrader/tool/

## ストレージ削除
data remove storage mad: item.tool_upgrader.equipment
