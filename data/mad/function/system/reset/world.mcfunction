#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムな生存者の場所に全員をテレポート
execute if entity @p[predicate=mad:player/alive/] run \
  tp @a @p[predicate=mad:player/alive/,sort=random]

## 難易度
difficulty peaceful

## 時刻
time set noon

## 天気
weather clear

## ストレージ 削除
#### ワールドスポーン
data remove storage mad: world_spawn
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
data remove storage mad: individual
#### チーム戦
data remove storage mad: team
#### アイテム
data remove storage mad: item

## エンティティ
kill @e[type=minecraft:marker]
kill @e[predicate=mad:care_package/]
kill @e[predicate=mad:system/item/return_portal/armor_stand]
kill @e[predicate=mad:system/item/maze_maker/monster_egg]
kill @e[type=minecraft:armor_stand,tag=MAD_MinecartItem]

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

## 常時読み込みチャンクの削除
forceload remove all
