#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ボスバー設定
execute store result storage mad: count_players.individual.number int 1 run scoreboard players get @s PlayerNumber
function mad:system/game/timer/individual/set_bossbar with storage mad: count_players.individual