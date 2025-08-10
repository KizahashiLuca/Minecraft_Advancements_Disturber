#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 初期化
#### ゲームルール
function mad:system/fall/initialize/gamerules/
#### プレイヤー情報
function mad:system/fall/initialize/players
#### スコアボード設定
function mad:system/fall/initialize/scoreboards
function mad:system/start/initialize/set_scoreboards/advancements
#### ワールド
function mad:system/fall/initialize/world with storage mad: gamerule
#### ボスバー
function mad:system/fall/initialize/bossbar

## 降下用メッセージ表示
function mad:message/fall/title
function mad:message/fall/

## リスポーンビーコン設定
function mad:system/fall/initialize/respawn_beacon/

## ワールドスポーン設定
execute at @e[predicate=mad:marker/world_spawn,limit=1] run setworldspawn ~ ~ ~

## テレポート
execute if predicate mad:gamerule/match_mode/individual/ as @a[predicate=mad:player/] run function mad:system/fall/initialize/random_spawn/individual/ with storage mad: gamerule.world_border
execute if predicate mad:gamerule/match_mode/team run function mad:system/fall/initialize/random_spawn/team/ with storage mad: gamerule.world_border

## フェーズ設定
function mad:phase/fall