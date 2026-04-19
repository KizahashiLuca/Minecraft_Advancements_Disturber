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
#### 決定ボタン
execute if entity @p[predicate=mad:system/setting/triggered/execute/start] run \
  function mad:system/setting/start

## トリガーの処理 - チーム設定トリガー
#### チームメンバー設定ダイアログ 再表示
execute as @a[predicate=mad:system/setting/triggered/set_team/show_dialog] run \
  function mad:system/setting/team_member/show_dialog
#### チームメンバー設定ダイアログ チーム離脱
execute as @a[predicate=mad:system/setting/triggered/set_team/leave_team] run \
  function mad:system/setting/team_member/leave_team
#### チームメンバー設定ダイアログ 赤チーム設定
execute as @a[predicate=mad:system/setting/triggered/set_team/team_a] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.a
#### チームメンバー設定ダイアログ 青チーム設定
execute as @a[predicate=mad:system/setting/triggered/set_team/team_b] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.b
#### チームメンバー設定ダイアログ 黄チーム設定
execute as @a[predicate=mad:system/setting/triggered/set_team/team_c] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.c
#### チームメンバー設定ダイアログ 緑チーム設定
execute as @a[predicate=mad:system/setting/triggered/set_team/team_d] run \
  function mad:system/setting/team_member/join_team \
    with storage mad: team.d
