#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset teams
team leave @a

## Reset world
execute positioned 0 310 0 run fill ~-15 ~ ~-15 ~15 ~9 ~15 minecraft:air

## Change phase
function mad:system/begin/gui/root/change_to