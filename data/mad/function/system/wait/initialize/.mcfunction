#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 初期化
#### ストレージ
function mad:system/wait/initialize/storages/
#### ゲームルール
function mad:system/wait/initialize/gamerules/
#### プレイヤー情報
function mad:system/wait/initialize/players
#### チーム
function mad:system/wait/initialize/teams/
#### スコアボード設定
function mad:system/wait/initialize/scoreboards
function mad:system/start/initialize/set_scoreboards/advancements
#### ワールド
function mad:system/wait/initialize/world/ with storage mad: gamerule
#### ボスバー
function mad:system/wait/initialize/bossbars/

## フェーズ設定
function mad:phase/wait