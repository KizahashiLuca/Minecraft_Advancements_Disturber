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
#### ゲームルール
function mad:system/game/initialize/gamerules/
#### プレイヤー情報
function mad:system/game/initialize/players/
#### スコアボード設定
function mad:system/game/initialize/scoreboards
function mad:system/start/initialize/set_scoreboards/advancements
#### ワールド
function mad:system/game/initialize/world with storage mad: gamerule
#### ボスバー
function mad:system/game/initialize/bossbars/
## タグ
execute as @a[predicate=mad:player/] run function mad:system/game/initialize/tags/

## 支援物資 投下場所確定
function mad:system/game/care_package/calculate_summon_point/

## 開始メッセージ表示
function mad:message/game/title
function mad:message/game/

## フェーズ設定
function mad:phase/game/