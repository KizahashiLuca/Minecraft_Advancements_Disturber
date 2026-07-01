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
function mad:phase/wait

## 初期化
#### ストレージ設定
function mad:system/wait/initialize/storages/
#### スコアボード設定
function mad:system/wait/initialize/scoreboards
function mad:system/start/initialize/set_scoreboards/advancements
#### ストレージ設定 - 支援物資ルートテーブル用
function mad:system/wait/initialize/storages/care_package/
#### ストレージ設定 - ワールドサイズ
function mad:system/wait/initialize/storages/world_size/
#### ゲームルール設定
function mad:system/wait/initialize/gamerules/
#### プレイヤー情報設定
function mad:system/wait/initialize/players
#### プレイヤー名格納
execute as @a[predicate=mad:player/] run \
  function mad:system/wait/initialize/player_name/
#### チーム設定
function mad:system/wait/initialize/teams/
#### ワールド設定
function mad:system/wait/initialize/world \
  with storage mad: rules
#### ボスバー設定
function mad:system/wait/initialize/bossbars/

## 待機メッセージ表示
#### タイトル
function mad:message/wait/title/30
#### メッセージ
function mad:message/wait/
