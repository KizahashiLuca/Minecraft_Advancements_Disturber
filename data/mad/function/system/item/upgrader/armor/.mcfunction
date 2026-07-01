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
scoreboard players set @s UseArmorUpgrader 0

## ストレージ初期化
data modify storage mad: item.armor_upgrader.equipment \
  set value \
    {\
      head: {\
        id: 'minecraft:air',\
        components: {},\
        type: 'head',\
      },\
      chest: {\
        id: 'minecraft:air',\
        components: {},\
        type: 'chest',\
      },\
      legs: {\
        id: 'minecraft:air',\
        components: {},\
        type: 'legs',\
      },\
      feet: {\
        id: 'minecraft:air',\
        components: {},\
        type: 'feet',\
      },\
    }

## サウンドイベント
playsound minecraft:block.anvil.use block @s ~ ~ ~ 1.0 1.0 1.0

## プレイヤーの防具をストレージに格納
data modify storage mad: item.armor_upgrader.equipment \
  merge from entity @s equipment

## アップグレード
#### 頭部の防具をアップグレードしてストレージに格納
function mad:system/item/upgrader/armor/upgrade \
  with storage mad: item.armor_upgrader.equipment.head
#### プレイヤーの頭部をアップグレードした防具に置換
function mad:system/item/upgrader/armor/replace \
  with storage mad: item.armor_upgrader.equipment.head
#### 胸部の防具をアップグレードしてストレージに格納
function mad:system/item/upgrader/armor/upgrade \
  with storage mad: item.armor_upgrader.equipment.chest
#### プレイヤーの胸部をアップグレードした防具に置換
function mad:system/item/upgrader/armor/replace \
  with storage mad: item.armor_upgrader.equipment.chest
#### 脚部の防具をアップグレードしてストレージに格納
function mad:system/item/upgrader/armor/upgrade \
  with storage mad: item.armor_upgrader.equipment.legs
#### プレイヤーの脚部をアップグレードした防具に置換
function mad:system/item/upgrader/armor/replace \
  with storage mad: item.armor_upgrader.equipment.legs
#### 足部の防具をアップグレードしてストレージに格納
function mad:system/item/upgrader/armor/upgrade \
  with storage mad: item.armor_upgrader.equipment.feet
#### プレイヤーの足部をアップグレードした防具に置換
function mad:system/item/upgrader/armor/replace \
  with storage mad: item.armor_upgrader.equipment.feet

## メッセージ表示
function mad:message/item/upgrader/armor

## ストレージ削除
data remove storage mad: item.armor_upgrader.equipment

## マーカーキル
kill @e[predicate=mad:item/upgrader/armor/marker,sort=nearest,limit=1]
