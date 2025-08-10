#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## プレイヤー計数用ストレージに格納
execute as @s[predicate=mad:player/team/a] run data modify storage mad: count_players.team set value a
execute as @s[predicate=mad:player/team/b] run data modify storage mad: count_players.team set value b
execute as @s[predicate=mad:player/team/c] run data modify storage mad: count_players.team set value c
execute as @s[predicate=mad:player/team/d] run data modify storage mad: count_players.team set value d
execute as @s[predicate=mad:player/team/no] run data modify storage mad: count_players.team set value no

## プレイヤー計数
function mad:system/common/count_players/count with storage mad: count_players