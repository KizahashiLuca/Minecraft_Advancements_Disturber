#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ削除
#### 犠牲者のプレイヤー番号
data remove storage mad: death.victim_number
#### 加害者のプレイヤー番号
data remove storage mad: death.killer_number

## 加害者と犠牲者の関係を取得
#### 犠牲者のプレイヤー番号をストレージに保持
execute store result storage mad: death.victim_number int 1 run \
  scoreboard players get @s PlayerNumber
#### 攻撃された時間からの経過時間が5秒(100ティック)以上の場合、
#### 加害者のプレイヤー番号をストレージに保持
execute on attacker \
  store result storage mad: death.killer_number int 1 run \
  scoreboard players get @s[predicate=mad:player/] PlayerNumber

## 加害者の有無によりキル/通常デスを判定
#### キルによる犠牲の場合
execute if data storage mad: death.killer_number run \
  function mad:system/game/detect_dying/kill/ \
    with storage mad: rules.match_mode
#### 通常デスによる犠牲の場合
execute unless data storage mad: death.killer_number run \
  function mad:system/game/detect_dying/death/ \
    with storage mad: rules.match_mode

## ストレージ削除
data remove storage mad: death
