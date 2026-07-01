#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 難易度
$difficulty $(difficulty)

## 時刻
time set noon

## 天気
weather clear

## ストレージ 削除
#### テレポートトリガー
data remove storage mad: teleport
#### 攻撃情報
data remove storage mad: attack
#### 死亡情報
data remove storage mad: death

## リスポーンバナー 削除
execute as @e[predicate=mad:marker/death_point] \
  at @s run \
  setblock ~ ~ ~ minecraft:air replace

## エンティティ 削除
#### アイテム
kill @e[type=minecraft:item]
#### 矢
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
#### トライデント
kill @e[type=minecraft:trident]
#### テキストディスプレイ
kill @e[type=minecraft:text_display]
#### リスポーンバナー
kill @e[predicate=mad:respawn_banner/]
#### 支援物資
kill @e[predicate=mad:care_package/]
#### 支援物資アイテム - 発信機
kill @e[predicate=mad:item/transmitter/marker]
#### 支援物資アイテム - 防具アップグレード
kill @e[predicate=mad:item/upgrader/armor/marker]
#### 支援物資アイテム - ツールアップグレード
kill @e[predicate=mad:item/upgrader/tool/marker]
#### 支援物資アイテム - 怪盗予告
kill @e[predicate=mad:item/notice_of_thief/marker]
#### 支援物資アイテム - 緊急招集
kill @e[predicate=mad:item/emergency_call/marker]
#### 支援物資アイテム - 帰還ポータル
kill @e[predicate=mad:item/return_portal/armor_stand]
#### その他 - 回復途中の村人ゾンビ
kill @e[type=minecraft:zombie_villager,nbt=!{ConversionTime:-1}]

## エンティティデータの初期化
#### なついている状態のアレイ
execute as @e[type=minecraft:allay] run \
  data modify entity @s Brain.memories \
    set value {}
execute as @e[type=minecraft:allay] run \
  data modify entity @s equipment \
    set value {}
execute as @e[type=minecraft:allay] run \
  data modify entity @s Inventory \
    set value []

## ワールドスポーン設定
execute at @e[predicate=mad:marker/world_spawn,limit=1] run \
  setworldspawn ~ ~ ~

## ワールド範囲設定
#### オーバーワールド
execute in minecraft:overworld run \
  function mad:system/fall/initialize/world/world_border \
    with storage mad: world_spawn.minecraft:overworld
#### ネザー
execute in minecraft:the_nether run \
  function mad:system/fall/initialize/world/world_border \
    with storage mad: world_spawn.minecraft:the_nether
#### エンド
execute in minecraft:the_end run \
  function mad:system/fall/initialize/world/world_border \
    with storage mad: world_spawn.minecraft:the_end
