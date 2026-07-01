#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボードリセット
scoreboard players reset @s LastHurtByPlayerMemoryTime

## ストレージ削除
#### 犠牲者のプレイヤー番号
data remove storage mad: death.victim_number
#### 加害者のプレイヤー番号
data remove storage mad: death.killer_number

## 加害者と犠牲者の関係を取得
#### 犠牲者のプレイヤー番号をストレージに保持
execute store result storage mad: death.victim_number int 1 run \
  scoreboard players get @s PlayerNumber
#### 犠牲者の最後に攻撃された時間からの経過時間を保持
execute store result score @s LastHurtByPlayerMemoryTime run \
  data get entity @s last_hurt_by_player_memory_time
#### 攻撃された時間からの経過時間が5秒(100ティック)以内の場合、
#### 加害者のプレイヤー番号をストレージに保持
execute as @s[scores={LastHurtByPlayerMemoryTime=0..100}] \
  if data entity @s last_hurt_by_player run \
  function mad:system/game/detect_dying/store_killer_number

## 加害者の有無によりキル/通常デスを判定
#### キルによる犠牲の場合
execute if data storage mad: death.killer_number run \
  function mad:system/game/detect_dying/kill/ \
    with storage mad: rules.match_mode
#### 通常デスによる犠牲の場合
execute unless data storage mad: death.killer_number run \
  function mad:system/game/detect_dying/death/ \
    with storage mad: rules.match_mode

## スコアボードリセット
scoreboard players reset @s LastHurtByPlayerMemoryTime

## ストレージ削除
data remove storage mad: death
