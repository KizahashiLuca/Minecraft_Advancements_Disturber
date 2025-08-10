#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ランダムプレイヤー設定
$execute if entity @p[predicate=mad:player/alive/,predicate=mad:player/team/not_$(team),sort=nearest] store result storage mad: item.transmitter.player_number int 1 run scoreboard players get @p[predicate=mad:player/alive/,predicate=mad:player/team/not_$(team),sort=nearest] PlayerNumber