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
data remove storage mad: death.victim_number
data remove storage mad: death.killer_number

## スコアボード設定
scoreboard players operation @s AttackedSecond -= #mad Second
scoreboard players operation @s AttackedTick -= #mad Tick
scoreboard players operation @s AttackedSecond *= #mad 20
scoreboard players operation @s AttackedTick += @s AttackedSecond

## ストレージ格納
execute store result storage mad: death.victim_number int 1 run scoreboard players get @s PlayerNumber
execute if score @s AttackedTick matches ..100 store result storage mad: death.killer_number int 1 run scoreboard players get @s AttackerNumber

## キル検出
execute if data storage mad: death.killer_number run function mad:system/game/detect_dying/kill/ with storage mad: gamerule.match_mode

## デス検出
execute unless data storage mad: death.killer_number run function mad:system/game/detect_dying/death/ with storage mad: gamerule.match_mode

## ストレージ削除
data remove storage mad: death