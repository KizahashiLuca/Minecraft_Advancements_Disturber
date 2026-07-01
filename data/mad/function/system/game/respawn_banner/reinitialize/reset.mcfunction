#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 一番最初にドロップしたときと同様の設定に変更
#### アイテムモデルをプレイヤーの頭に設定
data modify entity @s Item.components.'minecraft:item_model' set value 'minecraft:player_head'
#### エンティティの表示名からアイテム名を取得
data modify entity @s Item.components.'minecraft:item_name' \
  set from entity @s Item.components.'minecraft:custom_name'
#### カスタムデータのタグからエンティティデータのタグを取得
data modify entity @s Item.components.'minecraft:entity_data'.data.Tags \
  set from entity @s Item.components.'minecraft:custom_data'.Tags
#### カスタムデータの表示名からプレイヤーの頭のプロフィール名を取得
data modify entity @s Item.components.'minecraft:entity_data'.equipment.head.components.profile.name \
  set from entity @s Item.components.'minecraft:custom_data'.name
#### カスタムデータの表示名からプロフィール名を取得
data modify entity @s Item.components.'minecraft:profile'.name \
  set from entity @s Item.components.'minecraft:custom_data'.name
#### エンティティデータのタグの3個目()を削除
data remove entity @s Item.components.'minecraft:entity_data'.data.Tags[2]

## 非デスポーン設定
function mad:system/game/respawn_banner/reinitialize/initialize
