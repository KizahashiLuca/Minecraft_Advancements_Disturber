#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Jan 2021
## Version   : β-1.2.2
#####################################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mad:system/setting/choose_setting/set_inventory

## Set scoreboards for add-on
execute if score #mad Phase matches 0 run scoreboard players set #mad LoadAddon 2

## Change phase
scoreboard players set #mad Phase 5