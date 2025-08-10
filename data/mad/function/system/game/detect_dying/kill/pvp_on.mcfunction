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
#### 撃破ボーナスあり
execute if predicate mad:gamerule/bonus_time_of_kill/neq_zero run function mad:system/game/detect_dying/kill/storages/with_bonus_time_of_kill

## スコアボード設定
#### 犠牲者
function mad:system/game/detect_dying/kill/scoreboards/victim/pvp_on
#### 攻撃者
function mad:system/game/detect_dying/kill/scoreboards/killer/pvp_on with storage mad: death