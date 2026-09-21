#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
#### プレイヤー番号をストレージに一時格納
execute store result storage mad: player.tmp int 1 run \
  scoreboard players get @s PlayerNumber
#### プレイヤー番号をもとにボスバー設定
function mad:system/game/timer/individual/set_bossbar \
  with storage mad: player
