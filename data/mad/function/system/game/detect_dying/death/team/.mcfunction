#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ格納
execute as @s[predicate=mad:player/dying/a] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.a
execute as @s[predicate=mad:player/dying/b] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.b
execute as @s[predicate=mad:player/dying/c] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.c
execute as @s[predicate=mad:player/dying/d] run function mad:system/game/detect_dying/death/team/set_storage with storage mad: team.d

## ゲームモード設定 / スコアボード設定
function mad:system/game/detect_dying/kill/pvp_off