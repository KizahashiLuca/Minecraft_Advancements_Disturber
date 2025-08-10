#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 難易度
$difficulty $(difficulty)

## 時刻
time set noon

## 天気
weather clear

## ストレージ 削除
data remove storage mad: display_team_member
data remove storage mad: death

## エンティティ
kill @e[type=minecraft:marker,tag=MAD_Teleporter]