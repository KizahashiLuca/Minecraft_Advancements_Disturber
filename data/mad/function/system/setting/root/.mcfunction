#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーの処理 - ゲーム制御トリガー
#### 詳細設定ダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered_execute/detail_rules] run \
  function mad:system/setting/detail_rules/initialize
#### オプション設定ダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered_execute/option_rules] run \
  function mad:system/setting/option_rules/initialize
#### チーム戦ルール設定ダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered_execute/team_rules] run \
  function mad:system/setting/team_rules/initialize
#### キャンセルボタン
execute if entity @p[predicate=mad:system/setting/triggered_execute/cancel] run \
  function mad:system/setting/cancel
#### 決定ボタン
execute if entity @p[predicate=mad:system/setting/triggered_execute/start] run \
  function mad:system/setting/start
#### チーム編成マニュアル設定フェーズへ
execute if entity @p[predicate=mad:system/setting/triggered_execute/team_member] run \
  function mad:system/setting/team_member/initialize
