#####################################
## Minecraft Advancements Disturber
## MC-Version: JE 1.16
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 21 Dec 2020
## Version   : β-1.0
#####################################

## Set inventory
loot replace entity @p[tag=Host] inventory.11 loot mad:setting/choose_adding_time/choose_100secs
loot replace entity @p[tag=Host] inventory.12 loot mad:setting/choose_adding_time/choose_200secs
loot replace entity @p[tag=Host] inventory.13 loot mad:setting/choose_adding_time/choose_300secs
loot replace entity @p[tag=Host] inventory.14 loot mad:setting/choose_adding_time/choose_400secs
loot replace entity @p[tag=Host] inventory.15 loot mad:setting/choose_adding_time/choose_500secs
loot replace entity @p[tag=Host] inventory.19 loot mad:setting/common/cancel
loot replace entity @p[tag=Host] inventory.25 loot mad:setting/common/determine

## Set nether_star above selected time limit
execute if score #mad AddingTime matches 100 run loot replace entity @p[tag=Host] inventory.2 loot mad:setting/common/selected
execute if score #mad AddingTime matches 200 run loot replace entity @p[tag=Host] inventory.3 loot mad:setting/common/selected
execute if score #mad AddingTime matches 300 run loot replace entity @p[tag=Host] inventory.4 loot mad:setting/common/selected
execute if score #mad AddingTime matches 400 run loot replace entity @p[tag=Host] inventory.5 loot mad:setting/common/selected
execute if score #mad AddingTime matches 500 run loot replace entity @p[tag=Host] inventory.6 loot mad:setting/common/selected