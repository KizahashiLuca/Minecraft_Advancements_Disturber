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
execute as @a[predicate=mad:system/setting/login_midtime/spectator] run function mad:system/setting/login_midtime/spectator
execute if score #mad_player NumberOfPlayers matches 2.. as @e[tag=MAD_Interaction_Setting_ChangeSpectator] at @s on target run function mad:system/setting/login_midtime/player

## スペクテイターモードの処理
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run tp @a[distance=12..] @e[predicate=mad:marker/respawn_beacon,limit=1]

## トリガーの処理
#### ゲーム制御トリガー - ルートダイアログ
execute if entity @p[predicate=mad:system/setting/triggered_execute/root] run \
  function mad:system/setting/root/
#### ゲーム制御トリガー - 詳細設定ダイアログ
execute if entity @p[predicate=mad:system/setting/triggered_execute/detail_rules] run \
  function mad:system/setting/detail_rules/
#### ゲーム制御トリガー - オプション設定ダイアログ
execute if entity @p[predicate=mad:system/setting/triggered_execute/option_rules] run \
  function mad:system/setting/option_rules/
#### ゲーム制御トリガー - チーム戦ルール設定ダイアログ
execute if entity @p[predicate=mad:system/setting/triggered_execute/team_rules] run \
  function mad:system/setting/team_rules/
#### ゲーム制御トリガー - キャンセルボタン
execute if entity @p[predicate=mad:system/setting/triggered_execute/cancel] run \
  function mad:system/setting/cancel
