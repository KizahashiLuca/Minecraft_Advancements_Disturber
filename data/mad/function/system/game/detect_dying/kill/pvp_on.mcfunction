#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
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