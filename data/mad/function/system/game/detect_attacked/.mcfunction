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
data remove storage mad: attack.victim_number
#### 加害者のプレイヤー番号
data remove storage mad: attack.attacker_number

## 加害者のプレイヤー番号をストレージに格納
execute on attacker \
  store result storage mad: attack.attacker_number int 1 run \
  scoreboard players get @s[predicate=mad:player/] PlayerNumber

## スコアボード設定
#### 先にストレージに格納した加害者のプレイヤー番号をスコアボードに保持
execute store result score @s AttackerNumber run \
  data get storage mad: attack.attacker_number 1.0
#### 攻撃された時間を保持
scoreboard players operation @s AttackedSecond = #mad Second
scoreboard players operation @s AttackedTick = #mad Tick

## ストレージ削除
data remove storage mad: attack
