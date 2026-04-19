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
execute as @a[predicate=mad:system/common/login_midtime/new_commer] run \
  function mad:system/common/login_midtime/new_commer

## クリックによるテレポート
execute as @a[predicate=mad:system/common/triggered/teleport/] run \
  function mad:system/common/triggered/teleport/

## ポジション
function mad:system/common/position/

## タイマー
function mad:system/game/timer/tick \
  with storage mad: rules.match_mode

## PvP解禁タイマー
execute if predicate mad:system/game/timer/pvp/tick/eq_zero run \
  function mad:system/game/timer/pvp/

## 支援物資
#### 投下タイマー
execute if predicate mad:system/common/time/eq_zero run \
  function mad:system/game/care_package/count_down/
#### 投下済みの支援物資の処理
execute as @e[predicate=mad:care_package/] run \
  function mad:system/game/care_package/

## 進捗用スコアボード設定
function mad:system/game/advancement/execute/

## デス検出
#### 加害者のプレイヤー番号を犠牲者側で保持
execute as @a[predicate=mad:player/attacked/] run \
  function mad:system/game/detect_attacked/
#### 死亡したプレイヤー
execute as @a[predicate=mad:player/dying/] run \
  function mad:system/game/detect_dying/

## チーム戦での生存検出
execute if predicate mad:gamerule/match_mode/team run \
  function mad:system/game/team

## ゲーム終了処理
#### 生存チーム(プレイヤー)の数をスコアボードに格納
$scoreboard players operation #mad NumberOfLiving = #mad $(number_of_living)
scoreboard players operation #mad NumberOfLiving -= #mad NumberOfDead
#### ゲーム全体の終了トリガー(#mad ExitTrigger) が 0 のとき、
#### かつ ゲームの終了条件を満たしたときに終了メッセージを表示
execute if predicate mad:system/game/exit/ run \
  function mad:system/game/exit
#### ゲーム全体の終了トリガー(#mad ExitTrigger) が立ったとき、
#### かつ ホストの終了トリガー(@p ExitTrigger) が立ったときに、
#### ゲーム終了
execute as @p[predicate=mad:system/game/exit/triggered] run \
  function mad:phase/exit
