#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時に秒数計算 - 1秒減算
execute if predicate mad:system/fall/timer/tick/eq_zero run \
  function mad:system/fall/timer/second

## 1ティック減算
scoreboard players remove #mad Tick 1
#### 0ティック未満の場合、19ティックにセット
execute if predicate mad:system/fall/timer/tick/lt_zero run \
  scoreboard players set #mad Tick 19
