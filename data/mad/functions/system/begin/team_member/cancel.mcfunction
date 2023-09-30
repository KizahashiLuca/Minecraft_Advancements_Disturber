#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset teams
team leave @a

## Reset world
execute positioned 0 310 0 run fill ~-15 ~ ~-15 ~15 ~9 ~15 minecraft:air

## Change phase
function mad:system/begin/gui/root/change_to