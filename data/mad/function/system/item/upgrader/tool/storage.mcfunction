#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ初期化
$data modify storage mad: item.tool_upgrader.equipment.tool set value {type:'$(type)',components:{}}

## ストレージ格納 - 現アイテム
$data modify storage mad: item.tool_upgrader.equipment.tool merge from entity @s $(nbt)