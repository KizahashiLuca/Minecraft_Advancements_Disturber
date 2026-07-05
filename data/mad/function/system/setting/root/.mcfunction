#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## トリガーの処理 - ゲーム制御トリガー
#### 詳細設定ダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered/execute/detail_rules] run \
  function mad:system/setting/detail_rules/initialize
#### オプション設定ダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered/execute/option_rules] run \
  function mad:system/setting/option_rules/initialize
#### 支援物資設定ダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered/execute/care_package] run \
  function mad:system/setting/care_package/initialize
#### チーム戦ルール設定ダイアログへ
execute if entity @p[predicate=mad:system/setting/triggered/execute/team_rules] run \
  function mad:system/setting/team_rules/initialize
#### キャンセルボタン
execute if entity @p[predicate=mad:system/setting/triggered/execute/cancel] run \
  function mad:system/setting/cancel
#### 決定ボタン
execute if entity @p[predicate=mad:system/setting/triggered/execute/start] run \
  function mad:system/setting/start
#### チーム編成マニュアル設定フェーズへ
execute if entity @p[predicate=mad:system/setting/triggered/execute/team_member] run \
  function mad:system/setting/team_member/initialize
