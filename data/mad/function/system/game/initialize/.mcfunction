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
function mad:phase/game/

## 初期化
#### プレイヤー情報
function mad:system/game/initialize/players/
function mad:system/game/initialize/players/clear_enderchest
#### スコアボード設定
function mad:system/game/initialize/scoreboards
function mad:system/start/initialize/set_scoreboards/advancements
#### サイドバー設定
function mad:system/game/initialize/sidebars
#### ゲームルール
function mad:system/game/initialize/gamerules/
#### ワールド
function mad:system/game/initialize/world with storage mad: rules
#### ボスバー
function mad:system/game/initialize/bossbars/
## タグ
execute as @a[predicate=mad:player/] run \
  function mad:system/game/initialize/tags/

## 支援物資 投下場所確定
function mad:system/game/care_package/calculate_summon_point/

## 開始メッセージ表示
#### タイトル
function mad:message/game/title
#### メッセージ
function mad:message/game/
