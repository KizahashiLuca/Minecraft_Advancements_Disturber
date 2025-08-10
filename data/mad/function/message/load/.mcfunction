#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## メッセージ表示
tellraw @a ['',{text:'---------------------------------'}]
#### バージョンエラーメッセージ表示
execute if predicate mad:version/error run function mad:message/error/version_error
#### 人数エラーメッセージ表示
execute if predicate mad:gamerule/num_of_players/error run function mad:message/error/num_of_players_error
#### エラーなしメッセージ表示
execute if predicate mad:system/start/initialize/accept run function mad:message/load/accept