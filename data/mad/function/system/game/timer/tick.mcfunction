#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時毎秒処理
$execute if predicate mad:system/game/timer/tick/eq_zero run function mad:system/game/timer/$(type)/second

## 毎ティック処理
scoreboard players remove #mad Tick 1
execute if predicate mad:system/game/timer/tick/lt_zero run scoreboard players add #mad Tick 20