#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時に秒数計算
execute if predicate mad:system/common/time/tick/eq_zero run function mad:system/common/time/second

## 1ティック減算
scoreboard players remove #mad Tick 1
execute if predicate mad:system/common/time/tick/lt_zero run scoreboard players set #mad Tick 19

## ボスバー設定
scoreboard players operation #mad GeneralTick = #mad Second
scoreboard players operation #mad GeneralTick *= #mad 20
scoreboard players operation #mad GeneralTick += #mad Tick
execute store result bossbar minecraft:bossbar value run scoreboard players get #mad GeneralTick