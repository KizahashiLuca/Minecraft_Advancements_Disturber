#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## チーム編成マニュアル設定開始
#### 初期設定開始メッセージ表示
execute as @a[predicate=mad:player/] run \
  function mad:message/setting/team_member/

## スコアボードのリセット
#### ホスト
function mad:system/setting/scoreboards
#### プレイヤー
execute as @a[predicate=mad:player/] run \
  function mad:system/setting/team_member/scoreboards
