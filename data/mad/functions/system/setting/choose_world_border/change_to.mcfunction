#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 06 Mar 2021
## Version   : β-1.2.4
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