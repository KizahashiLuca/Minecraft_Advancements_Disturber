#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムプレイヤー設定
$execute if entity @p[predicate=mad:player/alive/,predicate=mad:player/team/not_$(team)] \
  store result storage mad: item.transmitter.player_number int 1 run \
  scoreboard players get @p[predicate=mad:player/alive/,predicate=mad:player/team/not_$(team),sort=nearest] PlayerNumber
