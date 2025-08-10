#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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