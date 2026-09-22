#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 21 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ゲームモードをスペクテイターモードに
gamemode spectator @s

## ストレージ格納
#### 撃破ボーナスありの場合の追加メッセージ
execute if predicate mad:gamerule/bonus_time_of_kill/neq_zero run \
  function mad:system/game/detect_dying/kill/storages/with_bonus_time_of_kill

## スコアボード設定
#### 犠牲者は死亡判定
function mad:system/game/detect_dying/kill/scoreboards/victim/pvp_on
#### 攻撃者には撃破ボーナスを付与
function mad:system/game/detect_dying/kill/scoreboards/killer/pvp_on \
  with storage mad: death
#### 個人戦の場合
execute if predicate mad:gamerule/match_mode/individual/ run \
  scoreboard players add #mad NumberOfDead 1
execute if predicate mad:gamerule/match_mode/individual/ run \
  scoreboard players set @s Second 0
execute if predicate mad:gamerule/match_mode/individual/ run \
  scoreboard players set @s Tick 0
