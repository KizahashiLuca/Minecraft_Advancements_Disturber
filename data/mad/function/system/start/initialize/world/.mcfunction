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
#### ホストの位置に常時読み込みチャンクを設定
execute at @p[predicate=mad:player/host] run \
  forceload add ~ ~

## ワールドスポーン
#### ホストの位置にワールドスポーンを設定
execute at @p[predicate=mad:player/host] \
  align xyz run \
  summon minecraft:marker ~0.5 ~ ~0.5 \
    {\
      Tags: [\
        'mad_world_spawn',\
      ],\
      NoGravity: 1b,\
      Invulnerable: 1b,\
    }
#### ワールドスポーンの座標をスコアボードに格納
execute store result score #mad PosX run \
  data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[0] 1.0
execute store result score #mad PosY run \
  data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[1] 1.0
execute store result score #mad PosZ run \
  data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[2] 1.0

## オーバーワールドのワールドスポーンをストレージ格納
#### ディメンション
data modify storage mad: world_spawn.minecraft:overworld.dimension \
  set value 'overworld'
#### X座標
execute store result storage mad: world_spawn.minecraft:overworld.x int 1 run \
  scoreboard players get #mad PosX
execute if score #mad PosX matches 0.. run \
  data modify storage mad: world_spawn.minecraft:overworld.x_operator set value 'remove'
execute if score #mad PosX matches ..-1 run \
  data modify storage mad: world_spawn.minecraft:overworld.x_operator set value 'add'
execute if score #mad PosX matches 0.. \
  store result storage mad: world_spawn.minecraft:overworld.abs_x int 1 run \
  scoreboard players get #mad PosX
execute if score #mad PosX matches ..-1 \
  store result storage mad: world_spawn.minecraft:overworld.abs_x int -1 run \
  scoreboard players get #mad PosX
#### Y座標
execute store result storage mad: world_spawn.minecraft:overworld.y int 1 run \
  scoreboard players get #mad PosY
#### Z座標
execute store result storage mad: world_spawn.minecraft:overworld.z int 1 run \
  scoreboard players get #mad PosZ
execute if score #mad PosZ matches 0.. run \
  data modify storage mad: world_spawn.minecraft:overworld.z_operator set value 'remove'
execute if score #mad PosZ matches ..-1 run \
  data modify storage mad: world_spawn.minecraft:overworld.z_operator set value 'add'
execute if score #mad PosZ matches 0.. \
  store result storage mad: world_spawn.minecraft:overworld.abs_z int 1 run \
  scoreboard players get #mad PosZ
execute if score #mad PosZ matches ..-1 \
  store result storage mad: world_spawn.minecraft:overworld.abs_z int -1 run \
  scoreboard players get #mad PosZ
#### ワールドボーダー
execute in minecraft:overworld run \
  function mad:system/start/initialize/world/world_border \
    with storage mad: world_spawn.minecraft:overworld

## ネザーのワールドスポーンをストレージ格納
#### ディメンション
data modify storage mad: world_spawn.minecraft:the_nether.dimension \
  set value 'the_nether'
#### X座標
execute store result storage mad: world_spawn.minecraft:the_nether.x int 0.125 run \
  scoreboard players get #mad PosX
execute if score #mad PosX matches 0.. run \
  data modify storage mad: world_spawn.minecraft:the_nether.x_operator set value 'remove'
execute if score #mad PosX matches ..-1 run \
  data modify storage mad: world_spawn.minecraft:the_nether.x_operator set value 'add'
execute if score #mad PosX matches 0.. \
  store result storage mad: world_spawn.minecraft:the_nether.abs_x int 0.125 run \
  scoreboard players get #mad PosX
execute if score #mad PosX matches ..-1 \
  store result storage mad: world_spawn.minecraft:the_nether.abs_x int -0.125 run \
  scoreboard players get #mad PosX
#### Y座標
execute store result storage mad: world_spawn.minecraft:the_nether.y int 1 run \
  scoreboard players get #mad PosY
#### Z座標
execute store result storage mad: world_spawn.minecraft:the_nether.z int 0.125 run \
  scoreboard players get #mad PosZ
execute if score #mad PosZ matches 0.. run \
  data modify storage mad: world_spawn.minecraft:the_nether.z_operator set value 'remove'
execute if score #mad PosZ matches ..-1 run \
  data modify storage mad: world_spawn.minecraft:the_nether.z_operator set value 'add'
execute if score #mad PosZ matches 0.. \
  store result storage mad: world_spawn.minecraft:the_nether.abs_z int 0.125 run \
  scoreboard players get #mad PosZ
execute if score #mad PosZ matches ..-1 \
  store result storage mad: world_spawn.minecraft:the_nether.abs_z int -0.125 run \
  scoreboard players get #mad PosZ
#### ワールドボーダー
execute in minecraft:the_nether run \
  function mad:system/start/initialize/world/world_border \
    with storage mad: world_spawn.minecraft:the_nether

## エンドのワールドスポーンをストレージ格納
#### ディメンション
data modify storage mad: world_spawn.minecraft:the_end.dimension \
  set value 'the_end'
#### X座標
data modify storage mad: world_spawn.minecraft:the_end.x set value 0
data modify storage mad: world_spawn.minecraft:the_end.x_operator set value 'remove'
data modify storage mad: world_spawn.minecraft:the_end.abs_x set value 0
#### Y座標
execute store result storage mad: world_spawn.minecraft:the_end.y int 1 run \
  scoreboard players get #mad PosY
#### Z座標
data modify storage mad: world_spawn.minecraft:the_end.z set value 0
data modify storage mad: world_spawn.minecraft:the_end.z_operator set value 'remove'
data modify storage mad: world_spawn.minecraft:the_end.abs_z set value 0
#### ワールドボーダー
execute in minecraft:the_end run \
  function mad:system/start/initialize/world/world_border \
    with storage mad: world_spawn.minecraft:the_end

## ワールドスポーン設定
execute at @e[predicate=mad:marker/world_spawn,limit=1] run \
  setworldspawn ~ ~ ~

## ポジション表示用
#### 方角の表示をストレージに格納
data modify storage mad: position.0 \
  set value '南'
data modify storage mad: position.1 \
  set value '南西'
data modify storage mad: position.2 \
  set value '西'
data modify storage mad: position.3 \
  set value '北西'
data modify storage mad: position.4 \
  set value '北'
data modify storage mad: position.5 \
  set value '北東'
data modify storage mad: position.6 \
  set value '東'
data modify storage mad: position.7 \
  set value '南東'

## 全員移動
tp @a @e[predicate=mad:marker/world_spawn,limit=1]
