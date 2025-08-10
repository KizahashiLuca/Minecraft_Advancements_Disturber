#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## ストレージ削除
data remove storage mad: attack.victim_number
data remove storage mad: attack.attacker_number

## ストレージ格納
execute on attacker store result storage mad: attack.attacker_number int 1 run scoreboard players get @s[type=minecraft:player] PlayerNumber

## スコアボード設定
execute store result score @s AttackerNumber run data get storage mad: attack.attacker_number 1.0
scoreboard players operation @s AttackedSecond = #mad Second
scoreboard players operation @s AttackedTick = #mad Tick

## ストレージ削除
data remove storage mad: attack