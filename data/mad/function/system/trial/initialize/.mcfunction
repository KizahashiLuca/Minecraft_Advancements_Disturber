#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リセット
#### プレイヤータグ
function mad:system/reset/tags
#### ボスバー
function mad:system/reset/bossbars

## 初期化
#### ゲームルール
function mad:system/trial/initialize/gamerules
#### プレイヤータグ
function mad:system/start/initialize/tags
#### プレイヤー情報
function mad:system/trial/initialize/players
#### チーム
function mad:system/start/initialize/teams
#### スコアボード追加
function mad:system/start/initialize/add_scoreboards/
function mad:system/start/initialize/add_scoreboards/advancements
#### スコアボード設定
function mad:system/start/initialize/set_scoreboards/
function mad:system/start/initialize/set_scoreboards/advancements
function mad:system/game/initialize/scoreboards
#### チーム用ストレージ
function mad:system/start/initialize/storages/team
#### アップグレードキット表示用ストレージ
function mad:system/start/initialize/storages/upgrader
#### ゲームルール用ストレージ
function mad:system/start/initialize/storages/rules/
function mad:system/wait/initialize/storages/
#### ワールド
function mad:system/game/initialize/world \
  with storage mad: rules
#### バージョン確認
function mad:system/common/detect_version/
#### プレイヤー番号設定
function mad:system/common/numbering/

## 人数不足/バージョンエラーであればゲームリセット
#### エラーメッセージ表示
execute if predicate mad:version/error run \
  function mad:message/error/version_error
#### ゲームリセット
execute if predicate mad:version/error run \
  function mad:system/reset/

## バージョンOKであればトライアル開始
#### 開始メッセージ表示
execute if predicate mad:version/accept run \
  function mad:message/trial/
#### フェーズ設定
execute if predicate mad:version/accept run \
  function mad:phase/trial
#### ゲームリセット
execute if predicate mad:version/accept run \
  function mad:system/trial/initialize/give_items
