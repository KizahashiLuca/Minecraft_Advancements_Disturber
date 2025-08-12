#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################
tellraw @a [{text:'test game/detect_dying/kill/pvp_off'}]

## ゲームモード設定
gamemode survival @s

## エフェクト設定
effect clear @s

## インベントリ設定
clear @s

## スコアボード設定
#### 犠牲者
function mad:system/game/detect_dying/kill/scoreboards/victim/pvp_off