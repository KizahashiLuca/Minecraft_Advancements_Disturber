#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### プレイヤー番号をストレージに一時格納
execute store result storage mad: player.tmp int 1 run \
  scoreboard players get @s PlayerNumber
#### プレイヤー番号をもとに表示するプレイヤー番号とプレイヤー名を取得
function mad:system/game/initialize/bossbars/individual/get_player_number with storage mad: player
#### ボスバー設定
function mad:system/game/initialize/bossbars/individual/set_bossbar with storage mad: player.display
