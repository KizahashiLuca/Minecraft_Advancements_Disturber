#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 共通開始メッセージ表示
function mad:message/begin

## バージョンエラーメッセージ表示
execute if predicate mad:version/error run \
  function mad:message/error/version_error

## 人数エラーメッセージ表示
execute if predicate mad:gamerule/num_of_players/error run \
  function mad:message/error/num_of_players_error

## 共通終了メッセージ表示
function mad:message/end
