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

## クリックによるテレポート
execute as @a[predicate=mad:system/common/teleport/] run function mad:system/common/teleport/

## ポジション
function mad:system/common/position/

## タイマー
function mad:system/game/timer/tick with storage mad: gamerule.match_mode

## PvPカウント
execute if predicate mad:system/game/timer/pvp/tick/eq_zero run function mad:system/game/timer/pvp/

## 支援物資
#### カウント
execute if predicate mad:system/game/timer/care_package/tick/eq_zero run function mad:system/game/care_package/count_down/
#### 取得確認
execute as @e[predicate=mad:care_package/] run function mad:system/game/care_package/

## 進捗用スコアボード設定
function mad:system/game/advancement/execute/

## デス検出
execute as @a[predicate=mad:player/attacked/] run function mad:system/game/detect_attack/
execute as @a[predicate=mad:player/dying/] run function mad:system/game/detect_dying/

## 生存検出
execute if predicate mad:gamerule/match_mode/team run function mad:system/game/team

## ゲーム終了処理
$scoreboard players operation #mad NumberOfLiving = #mad_player $(number_of_living)
scoreboard players operation #mad NumberOfLiving -= #mad NumberOfDead
execute if predicate mad:system/game/exit/ run function mad:system/game/exit
execute as @p[predicate=mad:system/game/exit/triggered] run function mad:phase/exit