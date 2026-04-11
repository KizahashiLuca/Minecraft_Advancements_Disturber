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
#### ワールド
function mad:system/load/reset/world
#### プレイヤータグ
function mad:system/load/reset/tags
#### スコアボード
function mad:system/load/reset/scoreboards