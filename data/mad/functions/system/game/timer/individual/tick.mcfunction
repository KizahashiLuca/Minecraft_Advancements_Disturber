#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every second
execute if predicate mad:system/game/timer/individual/tick/eq_zero run function mad:system/game/timer/individual/second

## Calculate time every tick
scoreboard players remove #mad Tick 1
execute if predicate mad:system/game/timer/individual/tick/lt_zero run scoreboard players set #mad Tick 19