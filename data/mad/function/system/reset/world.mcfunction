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
difficulty peaceful

## 時刻
time set noon

## 天気
weather clear

## ストレージ 削除
#### ワールドスポーン
data remove storage mad: world_spawn
#### ディメンション
data remove storage mad: dimension
#### ポジション表示
data remove storage mad: position
#### テレポートトリガー
data remove storage mad: teleport
#### 支援物資 ポジション表示用
data remove storage mad: care_package
#### 攻撃情報
data remove storage mad: attack
#### 死亡情報
data remove storage mad: death
#### ゲームルール
data remove storage mad: rules
#### 個人戦
data remove storage mad: player
data remove storage mad: individual
#### チーム戦
data remove storage mad: team
#### アイテム
data remove storage mad: item

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
#### マーカー
kill @e[type=minecraft:marker]
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

## 強制ロード領域
#### 常時読み込みチャンクの削除
forceload remove all

## ワールド範囲をリセット
execute in minecraft:overworld run \
  worldborder center 0 0
execute in minecraft:overworld run \
  worldborder set 59999968
execute in minecraft:the_nether run \
  worldborder center 0 0
execute in minecraft:the_nether run \
  worldborder set 59999968
execute in minecraft:the_end run \
  worldborder center 0 0
execute in minecraft:the_end run \
  worldborder set 59999968

## 全員移動
#### ランダムな生存者の場所に全員をテレポート
execute if entity @p[predicate=mad:player/alive/] run \
  tp @a @p[predicate=mad:player/alive/,sort=random]
