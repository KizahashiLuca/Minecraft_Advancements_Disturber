#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## リセット
#### プレイヤータグ
function mad:system/reset/tags
#### ボスバー
function mad:system/reset/bossbars

## 初期化
#### ゲームルール
function mad:system/start/initialize/gamerules/
#### プレイヤータグ
function mad:system/start/initialize/tags
#### プレイヤー情報
function mad:system/start/initialize/players
#### チーム
function mad:system/start/initialize/teams
#### スコアボード追加
function mad:system/start/initialize/add_scoreboards/
function mad:system/start/initialize/add_scoreboards/advancements
#### スコアボード設定
function mad:system/start/initialize/set_scoreboards/
function mad:system/start/initialize/set_scoreboards/advancements
#### ワールド
function mad:system/start/initialize/world/
#### チーム用ストレージ
function mad:system/start/initialize/storages/team
#### アップグレードキット表示用ストレージ
function mad:system/start/initialize/storages/upgrader
#### ゲームルール用ストレージ
function mad:system/start/initialize/storages/rules/
#### ボスバー
function mad:system/start/initialize/bossbar
#### 疑似乱数生成器
function mad:system/common/randomizer/initialize
#### バージョン確認
function mad:system/common/detect_version/
#### プレイヤー計数
function mad:system/common/count_players/
#### プレイヤー番号設定
function mad:system/common/numbering/
#### 追加ストレージ設定
$function mad:system/start/initialize/storages/rules/$(type)

## ゲーム開始
$execute if predicate mad:system/start/initialize/accept run function mad:system/start/process/$(type)

## 人数不足/バージョンエラーであればゲームリセット
#### エラーメッセージ表示
execute if predicate mad:system/start/initialize/error run function mad:message/error/
#### ゲームリセット
execute if predicate mad:system/start/initialize/error run function mad:system/reset/
