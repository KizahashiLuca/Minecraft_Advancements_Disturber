#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードのリセット
function mad:system/setting/team_member/scoreboards

## チーム編成マニュアル設定ダイアログ表示
#### 2チームの場合
execute if predicate mad:gamerule/team_rules/number_of_teams/2 run \
  function mad:dialog/system/setting/team_member/2
#### 3チームの場合
execute if predicate mad:gamerule/team_rules/number_of_teams/3 run \
  function mad:dialog/system/setting/team_member/3
#### 4チームの場合
execute if predicate mad:gamerule/team_rules/number_of_teams/4 run \
  function mad:dialog/system/setting/team_member/4
