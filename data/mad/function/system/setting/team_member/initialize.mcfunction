#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ設定
function mad:phase/setting/team_member

## スコアボードのリセット
#### ホスト
function mad:system/setting/scoreboards
#### プレイヤー
execute as @a[predicate=mad:player/] run \
  function mad:system/setting/team_member/scoreboards

## チーム編成マニュアル設定開始
#### 初期設定開始メッセージ表示
execute as @a[predicate=mad:player/] run \
  function mad:message/setting/team_member/
