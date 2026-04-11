#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 途中でログインしたプレイヤーの処理
execute as @a[predicate=mad:system/common/login_midtime/new_commer] run function mad:system/common/login_midtime/new_commer

## ポジション
function mad:system/common/position/

## タイマー
execute if predicate mad:system/fall/timer/second/ge_zero run function mad:system/fall/timer/tick

## 着地判定
execute if predicate mad:system/fall/timer/second/lt_zero as @a[predicate=mad:system/fall/detect_on_ground/not_on_ground] at @s run function mad:system/fall/detect_on_ground/

## 着地後無限テレポート
execute as @a[predicate=mad:system/fall/detect_on_ground/on_ground] run function mad:system/fall/detect_on_ground/teleport with entity @s EnderItems[0].components.'minecraft:profile'

## 全員着地後フェーズ変更
execute if predicate mad:system/fall/timer/second/lt_zero unless entity @p[predicate=mad:system/fall/detect_on_ground/not_on_ground] run function mad:system/game/initialize/