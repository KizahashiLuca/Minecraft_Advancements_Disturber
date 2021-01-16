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

## Set scoreboard
scoreboard players operation @p[tag=Host] digit_100 = #mad AddingTime
scoreboard players operation @p[tag=Host] digit_100 /= #mad 100
scoreboard players operation @p[tag=Host] digit_010 = #mad AddingTime
scoreboard players operation @p[tag=Host] digit_010 %= #mad 100
scoreboard players operation @p[tag=Host] digit_010 /= #mad 10
scoreboard players operation @p[tag=Host] digit_001 = #mad AddingTime
scoreboard players operation @p[tag=Host] digit_001 %= #mad 100
scoreboard players operation @p[tag=Host] digit_001 %= #mad 10

## Set inventory
function mad:system/setting/choose_adding_time/set_inventory

## Change phase
scoreboard players set #mad Phase 7