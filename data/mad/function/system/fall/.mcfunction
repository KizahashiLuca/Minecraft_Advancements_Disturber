#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 途中でログインしたプレイヤーの処理
execute as @a[predicate=mad:system/common/login_midtime/new_commer] run \
  function mad:system/common/login_midtime/new_commer

## タイマー
#### 着地判定に使用。
#### 降下直後だとOnGround=1の時があり着地判定が働いてしまうため、
#### 1ティック以上経ってから着地判定を処理する。
execute if predicate mad:system/common/time/second/ge_zero run \
  function mad:system/fall/timer/tick

## ポジション
function mad:system/common/position/

## 着地判定
#### タイマーが-1ティック以下の時、
#### 着地していないプレイヤーの着地判定を実施。
#### 着地と見なされるのは以下の3種類
####  - 地面に着地したとき
####  - 水源/水流に着水, 溶岩源/溶岩流に着地したとき
####  - エンティティに乗ったとき
execute if predicate mad:system/common/time/second/lt_zero \
  as @a[predicate=mad:system/fall/detect_on_ground/not_on_ground] \
  at @s run \
  function mad:system/fall/detect_on_ground/

## 着地後無限テレポート
#### 着地判定を受けたプレイヤーは、
#### プレイヤー名と同じタグを持つマーカーの位置に強制テレポート。
execute as @a[predicate=mad:system/fall/detect_on_ground/on_ground] run \
  function mad:system/fall/detect_on_ground/teleport \
    with entity @s EnderItems[0].components.'minecraft:profile'

## 全員着地後フェーズ変更
#### 着地していないプレイヤーがゼロになったらゲーム開始
execute if predicate mad:system/common/time/second/lt_zero \
  unless entity @p[predicate=mad:system/fall/detect_on_ground/not_on_ground] run \
  function mad:system/game/initialize/
