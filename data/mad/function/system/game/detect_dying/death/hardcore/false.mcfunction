#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームモードをサバイバルモードに
gamemode survival @s

## エフェクトクリア
effect clear @s

## インベントリクリア
clear @s

## スコアボード設定
#### 犠牲者は蘇生
function mad:system/game/detect_dying/kill/scoreboards/victim/pvp_off
