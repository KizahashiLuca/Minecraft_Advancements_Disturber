#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 12 Sep 2021
## Version   : β-1.3.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mad:system/setting/choose_gamerule/set_inventory

## Change phase
scoreboard players set #mad Phase 9