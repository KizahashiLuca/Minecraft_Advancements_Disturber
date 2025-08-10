#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー設定
execute store result storage mad: count_players.individual.number int 1 run scoreboard players get @s PlayerNumber
function mad:system/game/timer/individual/set_bossbar with storage mad: count_players.individual