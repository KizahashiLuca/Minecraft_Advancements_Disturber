#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 難易度
$difficulty $(difficulty)

## 時刻
time set noon

## 天気
weather clear

## ストレージ 削除
data remove storage mad: death

## エンティティ 削除
#### マーカー
kill @e[type=minecraft:marker,tag=mad_teleporter]
#### テキストディスプレイ
kill @e[type=minecraft:text_display]
#### 帰還ポータル
kill @e[predicate=mad:system/item/return_portal/armor_stand]
#### メイズメイカー
kill @e[predicate=mad:system/item/maze_maker/monster_egg]
#### アップグレードキット
kill @e[type=minecraft:armor_stand,tag=mad_minecart_item]
#### その他
kill @e[type=minecraft:zombie_villager,nbt=!{ConversionTime:-1}]
execute as @e[type=minecraft:allay] run \
  data modify entity @s Brain.memories set value {}
execute as @e[type=minecraft:allay] run \
  data modify entity @s equipment set value {}
execute as @e[type=minecraft:allay] run \
  data modify entity @s Inventory set value []
