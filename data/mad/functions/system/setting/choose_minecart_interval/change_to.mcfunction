#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 01 Sep 2021
## Version   : β-1.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Clear inventory
clear @p[tag=Host]

## Set scoreboard
scoreboard players operation @p[tag=Host] digit_0100 = #mad CartInterval
scoreboard players operation @p[tag=Host] digit_0100 /= #mad 100
scoreboard players operation @p[tag=Host] digit_0010 = #mad CartInterval
scoreboard players operation @p[tag=Host] digit_0010 %= #mad 100
scoreboard players operation @p[tag=Host] digit_0010 /= #mad 10
scoreboard players operation @p[tag=Host] digit_0001 = #mad CartInterval
scoreboard players operation @p[tag=Host] digit_0001 %= #mad 100
scoreboard players operation @p[tag=Host] digit_0001 %= #mad 10

## Set inventory
function mad:system/setting/choose_minecart_interval/set_inventory

## Change phase
scoreboard players set #mad Phase 8