#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0.
#####################################

## 使用トリガーリセット
scoreboard players set @s UseToolUpgrader 0

## ストレージ初期化
data modify storage mad: item.tool_upgrader.equipment \
  set value {}

## アップグレード
#### 対象ツールを持っていない時 -> アイテム返却
execute as @s[predicate=!mad:item/upgrader/tool/mainhand,predicate=!mad:item/upgrader/tool/offhand] run \
  function mad:system/item/upgrader/tool/upgradable/none
#### 対象ツールを持っている時 - メインハンド
execute as @s[predicate=mad:item/upgrader/tool/mainhand] run \
  function mad:system/item/upgrader/tool/upgradable/ \
    {\
      type: 'mainhand',\
      nbt: 'SelectedItem',\
    }
#### 対象ツールを持っている時 - オフハンド
execute as @s[predicate=mad:item/upgrader/tool/offhand] run \
  function mad:system/item/upgrader/tool/upgradable/ \
    {\
      type: 'offhand',\
      nbt: 'equipment.offhand',\
    }

## マーカーキル
kill @e[predicate=mad:item/upgrader/tool/marker,sort=nearest,limit=1]
