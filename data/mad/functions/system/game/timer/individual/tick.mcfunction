#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every second
execute if predicate mad:system/game/timer/individual/tick/eq_zero run function mad:system/game/timer/individual/second

## Calculate time every tick
scoreboard players remove #mad Tick 1
execute if predicate mad:system/game/timer/individual/tick/lt_zero run scoreboard players set #mad Tick 19