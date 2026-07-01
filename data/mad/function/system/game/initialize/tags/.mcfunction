#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## タグ付与
#### プレイヤー番号をストレージに一時格納
execute store result storage mad: player.tmp int 1 run \
  scoreboard players get @s PlayerNumber
#### プレイヤー番号をそのままタグ付与
function mad:system/game/initialize/tags/add_tag \
  with storage mad: player
