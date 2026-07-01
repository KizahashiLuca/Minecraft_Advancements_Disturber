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
function mad:phase/fall

## 初期化
#### スコアボード設定
function mad:system/fall/initialize/scoreboards
function mad:system/start/initialize/set_scoreboards/advancements
#### ゲームルール
function mad:system/fall/initialize/gamerules/
#### プレイヤー情報
function mad:system/fall/initialize/players
#### ワールド
function mad:system/fall/initialize/world/ \
  with storage mad: rules
#### ボスバー
function mad:system/fall/initialize/bossbar

## テレポート
execute if predicate mad:gamerule/match_mode/individual/ \
  as @a[predicate=mad:player/] run \
  function mad:system/fall/initialize/random_spawn/individual/ \
    with storage mad: rules.world_size
execute if predicate mad:gamerule/match_mode/team run \
  function mad:system/fall/initialize/random_spawn/team/ \
    with storage mad: rules.world_size

## 降下用メッセージ表示
#### タイトル
function mad:message/fall/title
#### メッセージ
function mad:message/fall/
