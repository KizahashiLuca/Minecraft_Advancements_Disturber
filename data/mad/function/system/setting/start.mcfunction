#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## フェーズ設定
function mad:phase/wait

## スコアボードのリセット
function mad:system/setting/scoreboards

## ダイアログクリア
dialog clear @a

## チーム編成ランダム設定
function mad:system/setting/team_member/attach_random

## 待機フェーズへ移動
function mad:system/wait/initialize/
