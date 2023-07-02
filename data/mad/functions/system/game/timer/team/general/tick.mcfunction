#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Calculate time every tick
scoreboard players add #mad GeneralTick 1
execute if predicate mad:system/game/timer/team/general/tick/ge_20 run scoreboard players set #mad GeneralTick 0

## Calculate time every second
execute if predicate mad:system/game/timer/team/general/tick/eq_zero run function mad:system/game/timer/team/general/second