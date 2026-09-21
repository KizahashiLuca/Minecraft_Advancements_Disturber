#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## バージョンエラーメッセージ表示
execute if predicate mad:version/error run \
  function mad:message/error/version_error

## 人数エラーメッセージ表示
execute if predicate mad:gamerule/num_of_players/error run \
  function mad:message/error/num_of_players_error
