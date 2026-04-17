#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 各プレイヤー情報をストレージに格納
#### プレイヤーのエンダーチェストにプレイヤーの頭を配置
loot replace entity @s enderchest.0 loot mad:system/wait/player_head
#### プレイヤー番号をストレージに一時格納
execute store result storage mad: player.tmp int 1 run \
  scoreboard players get @s PlayerNumber
#### プレイヤー名を格納
function mad:system/wait/initialize/player_name/storage with storage mad: player
