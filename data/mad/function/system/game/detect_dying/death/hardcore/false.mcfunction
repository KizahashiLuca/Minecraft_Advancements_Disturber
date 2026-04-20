#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
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

## 初期アイテムを配布
loot give @s loot mad:system/game/first_items
