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
#### ゲーム開始後、初めてログインしたプレイヤーはスペクテイターモードに
execute as @a[predicate=mad:system/common/login_midtime/new_commer] run \
  function mad:system/common/login_midtime/new_commer
#### スペクテイターモードのプレイヤーで、トリガーを実行した人は参加プレイヤーに
execute as @a[predicate=mad:system/setting/login_midtime/to_adventure] run \
  function mad:system/setting/login_midtime/to_adventure
#### 参加者モードのプレイヤーで、トリガーを実行した人は観戦プレイヤーに
execute as @a[predicate=mad:system/setting/login_midtime/to_spectator] run \
  function mad:system/setting/login_midtime/to_spectator

## スペクテイターモードの処理
execute at @e[predicate=mad:marker/respawn_beacon,limit=1] run \
  tp @a[distance=12..] @e[predicate=mad:marker/respawn_beacon,limit=1]

## トリガーの処理
#### ルートダイアログにおける処理
execute if predicate mad:phase/setting/root run \
  function mad:system/setting/root/
#### 詳細設定ダイアログにおける処理
execute if predicate mad:phase/setting/detail_rules run \
  function mad:system/setting/detail_rules/
#### 詳細設定ダイアログにおける処理
execute if predicate mad:phase/setting/option_rules run \
  function mad:system/setting/option_rules/
#### 詳細設定ダイアログにおける処理
execute if predicate mad:phase/setting/team_rules run \
  function mad:system/setting/team_rules/
#### 詳細設定ダイアログにおける処理
execute if predicate mad:phase/setting/team_member run \
  function mad:system/setting/team_member/

## トリガーの処理 - その他
execute as @a[predicate=mad:system/common/triggered/execute/error] run \
  function mad:system/common/triggered/error
