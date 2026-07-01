#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 降着判定
#### 降着していない支援物資の降着判定を実施。
#### 降着と見なされるのは以下の3種類
####  - 地面に降着したとき
####  - 水源/水流に着水, 溶岩源/溶岩流に降着したとき
####  - エンティティに乗ったとき
execute as @s[predicate=mad:care_package/detect_on_ground/not_on_ground] \
  at @s run \
  function mad:system/game/care_package/detect_on_ground/

## 開封判定
#### 開封していない支援物資の開封判定を実施。
#### 開封判定のロジック
####  - 開封するとアイテムが確定するため LootTable プロパティが消える
####  - LootTable の有無で開封を判定する
execute store success score @s UnsetLootTable run \
  data get entity @s LootTable
#### 開封済みの場合、支援物資を爆破
execute as @s[predicate=mad:care_package/explode] \
  at @s run \
  function mad:system/game/care_package/explode/
