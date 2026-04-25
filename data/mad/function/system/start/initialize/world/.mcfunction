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
#### 支援物資
kill @e[predicate=mad:care_package/]
#### 帰還ポータル
kill @e[predicate=mad:item/return_portal/armor_stand]
#### アップグレードキット
kill @e[type=minecraft:armor_stand,tag=mad_minecart_item]
#### その他
kill @e[type=minecraft:zombie_villager,nbt=!{ConversionTime:-1}]
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
#### オーバーワールドのワールドスポーンをストレージ格納
data modify storage mad: world_spawn.overworld.dimension \
  set value 'overworld'
execute store result storage mad: world_spawn.overworld.x int 1 run \
  scoreboard players get #mad PosX
execute store result storage mad: world_spawn.overworld.y int 1 run \
  scoreboard players get #mad PosY
execute store result storage mad: world_spawn.overworld.z int 1 run \
  scoreboard players get #mad PosZ
execute in minecraft:overworld run \
  function mad:system/start/initialize/world/world_border \
    with storage mad: world_spawn.overworld
#### ネザーのワールドスポーンをストレージ格納
data modify storage mad: world_spawn.the_nether.dimension \
  set value 'the_nether'
execute store result storage mad: world_spawn.the_nether.x int 0.125 run \
  scoreboard players get #mad PosX
execute store result storage mad: world_spawn.the_nether.y int 1 run \
  scoreboard players get #mad PosY
execute store result storage mad: world_spawn.the_nether.z int 0.125 run \
  scoreboard players get #mad PosZ
execute in minecraft:the_nether run \
  function mad:system/start/initialize/world/world_border \
    with storage mad: world_spawn.the_nether
#### エンドのワールドスポーンをストレージ格納
data modify storage mad: world_spawn.the_end.dimension \
  set value 'the_end'
execute store result storage mad: world_spawn.the_end.x int 1 run \
  scoreboard players get #mad PosX
execute store result storage mad: world_spawn.the_end.y int 1 run \
  scoreboard players get #mad PosY
execute store result storage mad: world_spawn.the_end.z int 1 run \
  scoreboard players get #mad PosZ
execute in minecraft:the_end run \
  function mad:system/start/initialize/world/world_border \
    with storage mad: world_spawn.the_end

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
