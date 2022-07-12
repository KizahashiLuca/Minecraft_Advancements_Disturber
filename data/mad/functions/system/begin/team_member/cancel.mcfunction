#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset teams
team leave @a

## Reset mad:world
execute in mad:world positioned 0 1 0 run fill ~-10 ~ ~-10 ~10 ~ ~10 minecraft:iron_block

## Change phase
function mad:system/begin/gui/root/change_to