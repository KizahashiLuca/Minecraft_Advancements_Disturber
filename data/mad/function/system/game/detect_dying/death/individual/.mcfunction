#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームモード設定
gamemode spectator @s

## ストレージ格納
function mad:system/game/detect_dying/death/individual/set_storage

## スコアボード設定
function mad:system/game/detect_dying/death/individual/set_scoreboard

## スコアボード設定
function mad:system/game/detect_dying/kill/scoreboards/victim/pvp_on
scoreboard players add #mad NumberOfDead 1
scoreboard players reset @s Second
scoreboard players reset @s Tick