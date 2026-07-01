#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 初期化
#### プレイヤータグ
function mad:system/load/initialize/tags
#### スコアボード追加
function mad:system/load/initialize/add_scoreboards
#### スコアボード設定
function mad:system/load/initialize/set_scoreboards
#### バージョン確認
function mad:system/common/detect_version/
#### プレイヤー計数
function mad:system/common/count_players/

## メッセージ表示
function mad:message/load/

## リセット
#### プレイヤータグ
function mad:system/load/reset/tags
#### スコアボード
function mad:system/load/reset/scoreboards
