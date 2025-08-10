#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 一番最初にドロップしたときと同様の設定に変更
data modify entity @s Item.components.'minecraft:item_model' set value 'minecraft:player_head'
data modify entity @s Item.components.'minecraft:item_name' set from entity @s Item.components.'minecraft:custom_name'
data modify entity @s Item.components.'minecraft:entity_data'.data.Tags set from entity @s Item.components.'minecraft:custom_data'.Tags
data modify entity @s Item.components.'minecraft:entity_data'.equipment.head.components.profile.name set from entity @s Item.components.'minecraft:custom_data'.name
data modify entity @s Item.components.'minecraft:profile'.name set from entity @s Item.components.'minecraft:custom_data'.name
data remove entity @s Item.components.'minecraft:entity_data'.data.Tags[2]

## 非デスポーン設定
function mad:system/game/respawn_banner/reinitialize/initialize