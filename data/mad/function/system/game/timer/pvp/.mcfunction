#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## スコアボード設定
scoreboard players remove #mad TimeOfPvPStart 1
execute if predicate mad:system/game/timer/pvp/second/eq_zero run function mad:system/game/timer/pvp/set_pvp_on

## メッセージ表示
execute if predicate mad:system/game/timer/pvp/second/eq_ten_minutes run function mad:message/game/pvp/before_ten_minutes
execute if predicate mad:system/game/timer/pvp/second/eq_five_minutes run function mad:message/game/pvp/before_five_minutes
execute if predicate mad:system/game/timer/pvp/second/eq_three_minutes run function mad:message/game/pvp/before_three_minutes
execute if predicate mad:system/game/timer/pvp/second/eq_one_minute run function mad:message/game/pvp/before_one_minute
execute if predicate mad:system/game/timer/pvp/second/eq_zero run function mad:message/game/pvp/set_pvp_on