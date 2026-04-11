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
execute as @s[predicate=mad:player/dying/a] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.a
execute as @s[predicate=mad:player/dying/b] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.b
execute as @s[predicate=mad:player/dying/c] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.c
execute as @s[predicate=mad:player/dying/d] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.d

## スコアボード設定
function mad:system/game/detect_dying/death/team/set_scoreboard

## ゲームモード設定 / スコアボード設定
function mad:system/game/detect_dying/kill/pvp_off