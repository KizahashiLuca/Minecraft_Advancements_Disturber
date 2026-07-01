#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 1秒減算
scoreboard players remove #mad Second 1

## 各プレイヤーのタイマー減算
#### 各プレイヤーの経過秒数から共通タイマーの秒数を減算して経過秒数に格納
#### 通常は 1秒 であり、離脱しても経過秒数は公平に経過秒数に格納される
#### 通常 経過秒数は正になる
scoreboard players operation @a[predicate=mad:player/alive/] GeneralSecond -= #mad Second
#### 各プレイヤーの残り時間から経過秒数を減算
execute as @a[predicate=mad:system/game/timer/individual/general/second/gt_zero] run \
  scoreboard players operation @s Second -= @s GeneralSecond
#### 共通タイマーの秒数を全員の経過秒数に保存
#### 次の秒数計算時に使用
scoreboard players operation @a[predicate=mad:player/alive/] GeneralSecond = #mad Second

## タイムアップ
execute as @a[predicate=mad:system/game/timer/individual/second/eq_zero] \
  at @s run \
  function mad:system/game/timer/individual/time_up

## ボスバー設定
execute as @a[predicate=mad:player/alive/] run \
  function mad:system/game/timer/individual/set_storage

## サウンドイベント
execute as @a[predicate=mad:system/game/timer/individual/second/from_4_to_10] \
  at @s run \
  playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/game/timer/individual/second/from_1_to_3] \
  at @s run \
  playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute as @a[predicate=mad:system/game/timer/individual/second/eq_zero] \
  at @s run \
  playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1
