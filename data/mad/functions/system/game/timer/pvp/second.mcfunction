#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set scoreboard
scoreboard players remove #mad PvPSecond 1

## Time over
execute if predicate mad:system/game/timer/pvp/second/eq_zero run scoreboard players set #mad PvP 1