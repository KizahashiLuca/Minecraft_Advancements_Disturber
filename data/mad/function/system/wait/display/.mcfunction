#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## エンティティ召喚
#### 対戦形式
execute if predicate mad:system/wait/time/gamerule/match_mode run \
  function mad:system/wait/display/match_mode
#### 初期時間
execute if predicate mad:system/wait/time/gamerule/initial_time run \
  function mad:system/wait/display/initial_time
#### 追加時間
execute if predicate mad:system/wait/time/gamerule/bonus_time_of_advancements run \
  function mad:system/wait/display/bonus_time_of_advancements
#### 支援物資間隔
execute if predicate mad:system/wait/time/gamerule/care_package_interval run \
  function mad:system/wait/display/care_package_interval
#### ワールド範囲
execute if predicate mad:system/wait/time/gamerule/world_border run \
  function mad:system/wait/display/world_border
#### 難易度
execute if predicate mad:system/wait/time/gamerule/difficulty run \
  function mad:system/wait/display/difficulty with storage mad: rules
#### 天気サイクル
execute if predicate mad:system/wait/time/gamerule/advance_weather run \
  function mad:system/wait/display/advance_weather
#### 昼夜サイクル
execute if predicate mad:system/wait/time/gamerule/advance_time run \
  function mad:system/wait/display/advance_time
#### 支援物資投下数
execute if predicate mad:system/wait/time/gamerule/number_of_care_packages run \
  function mad:system/wait/display/number_of_care_packages
#### 撃破ボーナス
execute if predicate mad:system/wait/time/gamerule/bonus_time_of_kill run \
  function mad:system/wait/display/bonus_time_of_kill
#### まもなく開始
execute if predicate mad:system/wait/time/gamerule/start_soon run \
  function mad:system/wait/display/start_soon
#### テキストエンティティ削除
execute if predicate mad:system/wait/time/gamerule/reset run \
  function mad:system/wait/display/reset

## タイトル
#### ゲージ 15秒前
execute if predicate mad:system/wait/time/eq_half run \
  function mad:message/wait/title/eq_second
#### 黄ゲージ 4-10秒前
execute if predicate mad:system/wait/time/yellow_gage run \
  function mad:message/wait/title/yellow_gage
#### 赤ゲージ 1-3秒前
execute if predicate mad:system/wait/time/red_gage run \
  function mad:message/wait/title/red_gage
#### ゲージ 0秒
execute if predicate mad:system/common/time/second/eq_zero run \
  function mad:message/wait/title/eq_zero

## サウンドイベント
#### 黄ゲージ 4-10秒前
execute if predicate mad:system/wait/time/yellow_gage run \
  function mad:system/wait/sound_event/yellow_gage
#### 赤ゲージ 1-3秒前
execute if predicate mad:system/wait/time/red_gage run \
  function mad:system/wait/sound_event/red_gage
#### ゲージ 0秒
execute if predicate mad:system/common/time/second/eq_zero run \
  function mad:system/wait/sound_event/eq_zero
