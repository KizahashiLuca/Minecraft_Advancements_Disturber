#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.17-
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 24 Oct 2021
## Version   : β-1.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mad:system/setting/choose_difficulty/set_inventory

## Change phase
scoreboard players set #mad Phase 10