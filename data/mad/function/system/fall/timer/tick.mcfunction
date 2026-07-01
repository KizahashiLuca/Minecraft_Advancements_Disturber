#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 02 Sep 2026
## Version   : β-4.0
## Licensed under CC BY-SA 4.0. 
#####################################

## 0ティック時に秒数計算 - 1秒減算
execute if predicate mad:system/common/time/tick/eq_zero run \
  function mad:system/fall/timer/second

## 1ティック減算
scoreboard players remove #mad Tick 1
#### 0ティック未満の場合、20ティックを加算
execute if predicate mad:system/common/time/tick/lt_zero run \
  scoreboard players add #mad Tick 20
