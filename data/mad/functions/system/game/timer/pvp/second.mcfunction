#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad PvPSecond 1

## Time over
execute if predicate mad:system/game/timer/pvp/second/eq_zero run function mad:system/game/timer/pvp/set_pvp_on