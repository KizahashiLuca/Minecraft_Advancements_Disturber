#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームモードをスペクテイターモードに
gamemode spectator @s

## エフェクトクリア
effect clear @s

## インベントリクリア
clear @s

## スコアボード設定
#### 犠牲者は死亡判定
function mad:system/game/detect_dying/kill/scoreboards/victim/pvp_on
#### 個人戦の場合
execute if predicate mad:gamerule/match_mode/individual/ run \
  scoreboard players add #mad NumberOfDead 1
execute if predicate mad:gamerule/match_mode/individual/ run \
  scoreboard players set @s Second 0
execute if predicate mad:gamerule/match_mode/individual/ run \
  scoreboard players set @s Tick 0
