#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 11 Jan 2021
## Version   : β-1.2.1
#####################################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mad:system/setting/choose_gamerule/set_inventory

## Change phase
scoreboard players set #mad Phase 8