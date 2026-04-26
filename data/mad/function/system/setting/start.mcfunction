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
function mad:system/setting/scoreboards

## ダイアログクリア
dialog clear @a

## メンバー個人設定
execute if predicate mad:gamerule/match_mode/individual/ run \
  function mad:system/setting/team_member/individual

## チーム編成ランダム設定
execute if predicate mad:gamerule/match_mode/team run \
  function mad:system/setting/team_member/attach_random

## 待機フェーズへ移動
function mad:system/wait/initialize/
