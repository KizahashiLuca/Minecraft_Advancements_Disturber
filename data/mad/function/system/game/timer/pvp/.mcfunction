#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 26.1
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 11 Apr 2026
## Version   : β-3.0
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