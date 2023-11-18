#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad PvPSecond 1

## Send messages
execute if predicate mad:system/game/timer/pvp/second/eq_ten_minutes run function mad:system/game/timer/pvp/before_ten_minutes
execute if predicate mad:system/game/timer/pvp/second/eq_five_minutes run function mad:system/game/timer/pvp/before_five_minutes
execute if predicate mad:system/game/timer/pvp/second/eq_three_minutes run function mad:system/game/timer/pvp/before_three_minutes
execute if predicate mad:system/game/timer/pvp/second/eq_one_minute run function mad:system/game/timer/pvp/before_one_minute
execute if predicate mad:system/game/timer/pvp/second/eq_zero run function mad:system/game/timer/pvp/set_pvp_on