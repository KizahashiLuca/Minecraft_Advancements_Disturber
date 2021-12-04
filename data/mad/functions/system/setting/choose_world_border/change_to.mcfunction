#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.17
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 04 Dec 2021
## Version   : β-1.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[tag=Host]

## Set scoreboard
scoreboard players operation @p[tag=Host] digit_1000 = #mad WorldBorder
scoreboard players operation @p[tag=Host] digit_1000 /= #mad 1000
scoreboard players operation @p[tag=Host] digit_0100 = #mad WorldBorder
scoreboard players operation @p[tag=Host] digit_0100 %= #mad 1000
scoreboard players operation @p[tag=Host] digit_0100 /= #mad 100
scoreboard players operation @p[tag=Host] digit_0010 = #mad WorldBorder
scoreboard players operation @p[tag=Host] digit_0010 %= #mad 1000
scoreboard players operation @p[tag=Host] digit_0010 %= #mad 100
scoreboard players operation @p[tag=Host] digit_0010 /= #mad 10
scoreboard players operation @p[tag=Host] digit_0001 = #mad WorldBorder
scoreboard players operation @p[tag=Host] digit_0001 %= #mad 1000
scoreboard players operation @p[tag=Host] digit_0001 %= #mad 100
scoreboard players operation @p[tag=Host] digit_0001 %= #mad 10

## Set inventory
function mad:system/setting/choose_world_border/set_inventory

## Change phase
scoreboard players set #mad Phase 11