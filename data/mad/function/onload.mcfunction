#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## コマンド上限のゲームルールを最大数に設定
gamerule minecraft:max_command_sequence_length 65536
gamerule minecraft:max_command_forks 65536

## 共通開始メッセージ表示
function mad:message/begin

## ロードメッセージ表示
function mad:message/thank_you

## ゲーム未実行時のロードメッセージ表示
execute if predicate mad:phase/not_in_game run \
  function mad:system/load/

## 共通終了メッセージ表示
function mad:message/end
