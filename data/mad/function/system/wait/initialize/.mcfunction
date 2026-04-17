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

## 初期化
#### ストレージ設定
function mad:system/wait/initialize/storages/
#### スコアボード設定
function mad:system/wait/initialize/scoreboards
function mad:system/start/initialize/set_scoreboards/advancements
#### ストレージ設定 - 支援物資ルートテーブル用
execute if predicate mad:gamerule/number_of_care_packages/ge_1 run \
  function mad:system/wait/initialize/storages/care_package {number:'1'}
execute if predicate mad:gamerule/number_of_care_packages/ge_2 run \
  function mad:system/wait/initialize/storages/care_package {number:'2'}
execute if predicate mad:gamerule/number_of_care_packages/ge_3 run \
  function mad:system/wait/initialize/storages/care_package {number:'3'}
execute if predicate mad:gamerule/number_of_care_packages/ge_4 run \
  function mad:system/wait/initialize/storages/care_package {number:'4'}
execute if predicate mad:gamerule/number_of_care_packages/ge_5 run \
  function mad:system/wait/initialize/storages/care_package {number:'5'}
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
function mad:system/wait/initialize/world with storage mad: rules
#### ボスバー設定
function mad:system/wait/initialize/bossbars/

## 待機メッセージ表示
#### タイトル
function mad:message/wait/title/
#### メッセージ
function mad:message/wait/
