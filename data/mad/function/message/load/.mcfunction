#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
function mad:message/line_horizontal
#### バージョンエラーメッセージ表示
execute if predicate mad:version/error run \
  function mad:message/error/version_error
execute if predicate mad:version/error run \
  return fail
#### 人数エラーメッセージ表示
execute if predicate mad:gamerule/num_of_players/error run \
  function mad:message/error/num_of_players_error
execute if predicate mad:gamerule/num_of_players/error run \
  return fail
#### エラーなしメッセージ表示
execute if predicate mad:system/start/initialize/accept run \
  function mad:message/load/accept
